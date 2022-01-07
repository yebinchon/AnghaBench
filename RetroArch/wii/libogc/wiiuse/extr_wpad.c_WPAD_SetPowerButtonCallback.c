
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ WPADShutdownCallback ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 scalar_t__ __wpad_def_powcb ;
 scalar_t__ __wpad_powcb ;

void WPAD_SetPowerButtonCallback(WPADShutdownCallback cb)
{
 u32 level;

 _CPU_ISR_Disable(level);
 if(cb)
  __wpad_powcb = cb;
 else
  __wpad_powcb = __wpad_def_powcb;
 _CPU_ISR_Restore(level);
}
