
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* ipc_port_t ;
typedef scalar_t__ clock_t ;
struct TYPE_8__ {scalar_t__ ip_kobject; } ;


 scalar_t__ CLOCK_NULL ;
 scalar_t__ IKOT_CLOCK ;
 scalar_t__ IKOT_CLOCK_CTRL ;
 scalar_t__ IP_VALID (TYPE_1__*) ;
 scalar_t__ ip_active (TYPE_1__*) ;
 scalar_t__ ip_kotype (TYPE_1__*) ;
 int ip_lock (TYPE_1__*) ;
 int ip_unlock (TYPE_1__*) ;

clock_t
convert_port_to_clock(
 ipc_port_t port)
{
 clock_t clock = CLOCK_NULL;

 if (IP_VALID(port)) {
  ip_lock(port);
  if (ip_active(port) &&
      ((ip_kotype(port) == IKOT_CLOCK) ||
       (ip_kotype(port) == IKOT_CLOCK_CTRL))) {
   clock = (clock_t) port->ip_kobject;
  }
  ip_unlock(port);
 }
 return (clock);
}
