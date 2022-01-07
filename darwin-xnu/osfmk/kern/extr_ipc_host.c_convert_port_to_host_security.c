
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* ipc_port_t ;
typedef scalar_t__ host_t ;
struct TYPE_8__ {scalar_t__ ip_kobject; } ;


 scalar_t__ HOST_NULL ;
 scalar_t__ IKOT_HOST_SECURITY ;
 scalar_t__ IP_VALID (TYPE_1__*) ;
 scalar_t__ ip_active (TYPE_1__*) ;
 scalar_t__ ip_kotype (TYPE_1__*) ;
 int ip_lock (TYPE_1__*) ;
 int ip_unlock (TYPE_1__*) ;

host_t
convert_port_to_host_security(
 ipc_port_t port)
{
 host_t host = HOST_NULL;

 if (IP_VALID(port)) {
  ip_lock(port);
  if (ip_active(port) &&
      (ip_kotype(port) == IKOT_HOST_SECURITY))
   host = (host_t) port->ip_kobject;
  ip_unlock(port);
 }

 return host;
}
