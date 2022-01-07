
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t s32 ;


 int EXI_DEVICE_0 ;
 scalar_t__ EXI_Lock (size_t,int ,int ) ;
 int LWP_ThreadSleep (int ) ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __usbgecko_exi_unlock ;
 int __usbgecko_init () ;
 int usbgecko_inited ;
 int * wait_exi_queue ;

__attribute__((used)) static __inline__ void __usbgecko_exi_wait(s32 chn)
{
 u32 level;

 _CPU_ISR_Disable(level);
 if(!usbgecko_inited) __usbgecko_init();
 while(EXI_Lock(chn,EXI_DEVICE_0,__usbgecko_exi_unlock)==0) {
  LWP_ThreadSleep(wait_exi_queue[chn]);
 }
 _CPU_ISR_Restore(level);
}
