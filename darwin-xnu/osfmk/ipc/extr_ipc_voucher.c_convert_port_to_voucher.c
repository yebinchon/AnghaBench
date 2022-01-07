
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ipc_voucher_t ;
typedef TYPE_1__* ipc_port_t ;
struct TYPE_6__ {int ip_kobject; } ;


 scalar_t__ IKOT_VOUCHER ;
 scalar_t__ IP_VALID (TYPE_1__*) ;
 int IV_NULL ;
 int assert (int ) ;
 int ip_active (TYPE_1__*) ;
 scalar_t__ ip_kotype (TYPE_1__*) ;
 int ipc_voucher_reference (int ) ;

ipc_voucher_t
convert_port_to_voucher(
 ipc_port_t port)
{
 if (IP_VALID(port)) {
  ipc_voucher_t voucher = (ipc_voucher_t) port->ip_kobject;






  if (ip_kotype(port) != IKOT_VOUCHER)
   return IV_NULL;

  assert(ip_active(port));

  ipc_voucher_reference(voucher);
  return (voucher);
 }
 return IV_NULL;
}
