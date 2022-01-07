
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 size_t EXI_CHANNEL_2 ;
 int LWP_InitQueue (int *) ;
 int usbgecko_inited ;
 int * wait_exi_queue ;

__attribute__((used)) static void __usbgecko_init()
{
 u32 i;

 for(i=0;i<EXI_CHANNEL_2;i++) {
  LWP_InitQueue(&wait_exi_queue[i]);
 }
 usbgecko_inited = 1;
}
