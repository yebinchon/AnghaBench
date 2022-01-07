
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int processor_info_t ;
typedef int processor_flavor_t ;
typedef int kern_return_t ;


 int KERN_FAILURE ;
 int printf (char*,int,int,int ,unsigned int*) ;

kern_return_t
cpu_info(
        processor_flavor_t flavor,
 int slot_num,
 processor_info_t info,
 unsigned int *count)
{
 printf("cpu_info(%d,%d,%p,%p) not implemented\n",
  flavor, slot_num, info, count);
 return (KERN_FAILURE);
}
