
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int __builtin_arm_mrc (int,int,int ,int ,int) ;

uint32_t
machine_read_clidr(void)
{



 uint64_t clidr;
 __asm__ volatile("mrs	%0, CLIDR_EL1" : "=r" (clidr));

 return (uint32_t)clidr;
}
