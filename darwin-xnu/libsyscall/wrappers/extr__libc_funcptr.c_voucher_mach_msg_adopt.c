
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int voucher_mach_msg_state_t ;
typedef int mach_msg_header_t ;
struct TYPE_2__ {int (* voucher_mach_msg_adopt ) (int *) ;} ;


 int VOUCHER_MACH_MSG_STATE_UNCHANGED ;
 TYPE_1__* _libkernel_voucher_functions ;
 int stub1 (int *) ;

voucher_mach_msg_state_t
voucher_mach_msg_adopt(mach_msg_header_t *msg)
{
 if (_libkernel_voucher_functions->voucher_mach_msg_adopt) {
  return _libkernel_voucher_functions->voucher_mach_msg_adopt(msg);
 }
 return VOUCHER_MACH_MSG_STATE_UNCHANGED;
}
