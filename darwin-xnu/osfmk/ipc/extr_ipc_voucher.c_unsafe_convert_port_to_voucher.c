
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* ipc_port_t ;
struct TYPE_5__ {int ip_kobject; } ;


 scalar_t__ IKOT_VOUCHER ;
 scalar_t__ IP_VALID (TYPE_1__*) ;
 int IV_NULL ;
 scalar_t__ ip_kotype (TYPE_1__*) ;

uintptr_t
unsafe_convert_port_to_voucher(
 ipc_port_t port)
{
 if (IP_VALID(port)) {
  uintptr_t voucher = (uintptr_t) port->ip_kobject;






  if (ip_kotype(port) == IKOT_VOUCHER)
   return (voucher);
 }
 return (uintptr_t)IV_NULL;
}
