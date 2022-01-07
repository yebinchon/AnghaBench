
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 uintptr_t __builtin_arm_mrc (int,int ,int,int ,int) ;

uintptr_t
get_tpidrro(void)
{
 uintptr_t uthread;



 __asm__ volatile("mrs %0, TPIDRRO_EL0" : "=r" (uthread));

 return uthread;
}
