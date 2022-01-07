
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mach_msg_header_t ;
typedef int boolean_t ;
struct TYPE_2__ {int (* voucher_mach_msg_set ) (int *) ;} ;


 TYPE_1__* _libkernel_voucher_functions ;
 int stub1 (int *) ;

boolean_t
voucher_mach_msg_set(mach_msg_header_t *msg)
{
 if (_libkernel_voucher_functions->voucher_mach_msg_set) {
  return _libkernel_voucher_functions->voucher_mach_msg_set(msg);
 }
 return 0;
}
