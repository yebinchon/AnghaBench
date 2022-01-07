
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* ipc_port_t ;
struct TYPE_10__ {scalar_t__ ip_srights; } ;


 TYPE_1__* IP_DEAD ;
 int IP_VALID (TYPE_1__*) ;
 int assert (int) ;
 scalar_t__ ip_active (TYPE_1__*) ;
 int ip_lock (TYPE_1__*) ;
 int ip_reference (TYPE_1__*) ;
 int ip_unlock (TYPE_1__*) ;

ipc_port_t
ipc_port_copy_send(
 ipc_port_t port)
{
 ipc_port_t sright;

 if (!IP_VALID(port))
  return port;

 ip_lock(port);
 if (ip_active(port)) {
  assert(port->ip_srights > 0);

  ip_reference(port);
  port->ip_srights++;
  sright = port;
 } else
  sright = IP_DEAD;
 ip_unlock(port);

 return sright;
}
