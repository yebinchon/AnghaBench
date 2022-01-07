
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ipc_voucher_t ;


 scalar_t__ IPC_VOUCHER_NULL ;
 int iv_reference (scalar_t__) ;

void
ipc_voucher_reference(ipc_voucher_t voucher)
{
 if (IPC_VOUCHER_NULL == voucher)
  return;

 iv_reference(voucher);
}
