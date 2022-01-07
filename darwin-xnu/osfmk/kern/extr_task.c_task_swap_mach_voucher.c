
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ task_t ;
typedef int kern_return_t ;
typedef int ipc_voucher_t ;


 int KERN_INVALID_TASK ;
 int KERN_SUCCESS ;
 scalar_t__ TASK_NULL ;

kern_return_t
task_swap_mach_voucher(
 task_t task,
 ipc_voucher_t new_voucher,
 ipc_voucher_t *in_out_old_voucher)
{
 if (TASK_NULL == task)
  return KERN_INVALID_TASK;

 *in_out_old_voucher = new_voucher;
 return KERN_SUCCESS;
}
