
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int __builtin_arm_mrc (int,int ,int ,int ,int ) ;

uint32_t
machine_read_midr(void)
{



 uint64_t midr;
 __asm__ volatile("mrs	%0, MIDR_EL1" : "=r" (midr));

 return (uint32_t)midr;
}
