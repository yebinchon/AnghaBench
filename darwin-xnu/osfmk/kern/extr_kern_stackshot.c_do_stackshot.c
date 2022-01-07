
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;


 int kdp_snapshot ;
 int kdp_stackshot_kcdata_format (int ,int ,int *) ;
 int stack_snapshot_bytes_traced ;
 int stack_snapshot_flags ;
 int stack_snapshot_pid ;
 int stack_snapshot_ret ;

kern_return_t
do_stackshot(void *context)
{
#pragma unused(context)
 kdp_snapshot++;

 stack_snapshot_ret = kdp_stackshot_kcdata_format(stack_snapshot_pid,
     stack_snapshot_flags,
     &stack_snapshot_bytes_traced);

 kdp_snapshot--;
 return stack_snapshot_ret;
}
