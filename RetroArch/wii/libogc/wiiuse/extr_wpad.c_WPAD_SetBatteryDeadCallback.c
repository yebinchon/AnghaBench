
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int WPADShutdownCallback ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __wpad_batcb ;

void WPAD_SetBatteryDeadCallback(WPADShutdownCallback cb)
{
 u32 level;

 _CPU_ISR_Disable(level);
 __wpad_batcb = cb;
 _CPU_ISR_Restore(level);
}
