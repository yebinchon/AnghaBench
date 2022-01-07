
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int LWP_ThreadSleep (int ) ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int _gxfinished ;
 int _gxwaitfinish ;

void GX_WaitDrawDone()
{
 u32 level;
 _CPU_ISR_Disable(level);
 while(!_gxfinished)
  LWP_ThreadSleep(_gxwaitfinish);
 _CPU_ISR_Restore(level);
}
