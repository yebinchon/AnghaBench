
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 void* __sysarena1lo ;

void* SYS_GetArena1Lo()
{
 u32 level;
 void *arenalo;

 _CPU_ISR_Disable(level);
 arenalo = __sysarena1lo;
 _CPU_ISR_Restore(level);

 return arenalo;
}
