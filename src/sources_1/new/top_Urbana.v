`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UPV
// Engineer: Alejandro Gomez Gambin
// 
// Create Date: 13.08.2024 13:08:04
// Design Name: 
// Module Name: top_Urbana
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: top file for connecting the wrapper of block design to the Urbana peripherals
// 
// Dependencies: 
// 
// Revision: 1.0
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top_Urbana(
    clk_100mhz,
    SW,
    LED,
    BTN,
    RGB0,
    RGB1,
    ddr3_addr,
    ddr3_ba,
    ddr3_cas_n,
    ddr3_ck_n,
    ddr3_ck_p,
    ddr3_cke,
    ddr3_dm,
    ddr3_dq,
    ddr3_dqs_n,
    ddr3_dqs_p,
    ddr3_odt,
    ddr3_ras_n,
    ddr3_reset_n,
    ddr3_we_n,
    uart_rxd,
    uart_txd
    );
  input clk_100mhz;
  output [12:0]ddr3_addr;
  output [2:0]ddr3_ba;
  output ddr3_cas_n;
  output [0:0]ddr3_ck_n;
  output [0:0]ddr3_ck_p;
  output [0:0]ddr3_cke;
  output [1:0]ddr3_dm;
  inout [15:0]ddr3_dq;
  inout [1:0]ddr3_dqs_n;
  inout [1:0]ddr3_dqs_p;
  output [0:0]ddr3_odt;
  output ddr3_ras_n;
  output ddr3_reset_n;
  output ddr3_we_n;
  input uart_rxd;
  output uart_txd;
  inout [15:0]SW;
  inout [15:0]LED;
  inout [3:0]BTN;
  inout [2:0]RGB0;
  inout [2:0]RGB1;
  
  bd_wrapper bd_wrapper_i (
  .clk_100mhz(clk_100mhz),
    .ddr3_addr(ddr3_addr),
    .ddr3_ba(ddr3_ba),
    .ddr3_cas_n(ddr3_cas_n),
    .ddr3_ck_n(ddr3_ck_n),
    .ddr3_ck_p(ddr3_ck_p),
    .ddr3_cke(ddr3_cke),
    .ddr3_dm(ddr3_dm),
    .ddr3_dq(ddr3_dq),
    .ddr3_dqs_n(ddr3_dqs_n),
    .ddr3_dqs_p(ddr3_dqs_p),
    .ddr3_odt(ddr3_odt),
    .ddr3_ras_n(ddr3_ras_n),
    .ddr3_reset_n(ddr3_reset_n),
    .ddr3_we_n(ddr3_we_n),
    .gpio_rtl_0_tri_io({LED,SW}),
    .gpio_rtl_1_tri_io({RGB1,RGB0,BTN}),
    .uart_rxd(uart_rxd),
    .uart_txd(uart_txd)
  );
endmodule
