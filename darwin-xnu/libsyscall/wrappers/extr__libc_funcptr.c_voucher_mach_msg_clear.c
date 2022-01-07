
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mach_msg_header_t ;
struct TYPE_2__ {void (* voucher_mach_msg_clear ) (int *) ;} ;


 TYPE_1__* _libkernel_voucher_functions ;
 void stub1 (int *) ;

void
voucher_mach_msg_clear(mach_msg_header_t *msg)
{
 if (_libkernel_voucher_functions->voucher_mach_msg_clear) {
  return _libkernel_voucher_functions->voucher_mach_msg_clear(msg);
 }
}
