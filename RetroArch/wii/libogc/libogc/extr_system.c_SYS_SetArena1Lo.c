
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 void* __sysarena1lo ;

void SYS_SetArena1Lo(void *newLo)
{
 u32 level;

 _CPU_ISR_Disable(level);
 __sysarena1lo = newLo;
 _CPU_ISR_Restore(level);
}
