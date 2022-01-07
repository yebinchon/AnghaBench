
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __builtin_arm_mcr (int,int ,uintptr_t,int,int ,int) ;

void
set_tpidrro(uintptr_t uthread)
{



 __asm__ volatile("msr TPIDRRO_EL0, %0" : : "r" (uthread));

}
