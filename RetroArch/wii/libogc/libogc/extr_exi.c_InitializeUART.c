
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int EXI_CHANNEL_0 ;
 int EXI_DEVICE_1 ;
 int exi_uart_chan ;
 int exi_uart_dev ;
 int exi_uart_enabled ;

s32 InitializeUART()
{
 if((exi_uart_enabled+0x5a010000)==0x005a) return 0;

 exi_uart_chan = EXI_CHANNEL_0;
 exi_uart_dev = EXI_DEVICE_1;

 exi_uart_enabled = 0xa5ff005a;
 return 0;
}
