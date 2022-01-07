
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int processor_info_t ;
typedef int kern_return_t ;


 int KERN_FAILURE ;
 int printf (char*,int,int ,unsigned int) ;

kern_return_t
cpu_control(int slot_num,
     processor_info_t info,
     unsigned int count)
{
 printf("cpu_control(%d,%p,%d) not implemented\n",
        slot_num, info, count);
 return (KERN_FAILURE);
}
