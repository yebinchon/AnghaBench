
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* thread_t ;
typedef int mach_voucher_attr_content_t ;
typedef int kern_return_t ;
typedef int int32_t ;
struct TYPE_3__ {int ith_voucher; } ;


 int BANK_ORIGINATOR_PID ;
 int MACH_VOUCHER_ATTR_KEY_BANK ;
 TYPE_1__* current_thread () ;
 int mach_voucher_attr_command (int ,int ,int ,int *,int ,int ,int*) ;

kern_return_t
thread_get_current_voucher_origin_pid(
 int32_t *pid)
{
 uint32_t buf_size;
 kern_return_t kr;
 thread_t thread = current_thread();

 buf_size = sizeof(*pid);
 kr = mach_voucher_attr_command(thread->ith_voucher,
  MACH_VOUCHER_ATTR_KEY_BANK,
  BANK_ORIGINATOR_PID,
  ((void*)0),
  0,
  (mach_voucher_attr_content_t)pid,
  &buf_size);

 return kr;
}
