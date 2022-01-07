
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ipc_voucher_attr_control_t ;


 int ivac_release (int ) ;

void
ipc_voucher_attr_control_release(ipc_voucher_attr_control_t control)
{
 ivac_release(control);
}
