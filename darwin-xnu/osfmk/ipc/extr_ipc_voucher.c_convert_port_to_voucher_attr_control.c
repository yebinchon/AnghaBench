
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ipc_voucher_attr_control_t ;
typedef TYPE_1__* ipc_port_t ;
struct TYPE_6__ {int ip_kobject; } ;


 scalar_t__ IKOT_VOUCHER_ATTR_CONTROL ;
 scalar_t__ IP_VALID (TYPE_1__*) ;
 int IVAC_NULL ;
 int assert (int ) ;
 int ip_active (TYPE_1__*) ;
 scalar_t__ ip_kotype (TYPE_1__*) ;
 int ivac_reference (int ) ;

ipc_voucher_attr_control_t
convert_port_to_voucher_attr_control(
 ipc_port_t port)
{
 if (IP_VALID(port)) {
  ipc_voucher_attr_control_t ivac = (ipc_voucher_attr_control_t) port->ip_kobject;







  if (ip_kotype(port) != IKOT_VOUCHER_ATTR_CONTROL)
   return IVAC_NULL;

  assert(ip_active(port));

  ivac_reference(ivac);
  return (ivac);
 }
 return IVAC_NULL;
}
