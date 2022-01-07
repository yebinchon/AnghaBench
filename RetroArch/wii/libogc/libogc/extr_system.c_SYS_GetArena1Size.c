
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int _CPU_ISR_Disable (scalar_t__) ;
 int _CPU_ISR_Restore (scalar_t__) ;
 scalar_t__ __sysarena1hi ;
 scalar_t__ __sysarena1lo ;

u32 SYS_GetArena1Size()
{
 u32 level,size;

 _CPU_ISR_Disable(level);
 size = ((u32)__sysarena1hi - (u32)__sysarena1lo);
 _CPU_ISR_Restore(level);

 return size;
}
