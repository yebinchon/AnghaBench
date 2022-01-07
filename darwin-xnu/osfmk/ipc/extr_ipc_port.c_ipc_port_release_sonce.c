
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* ipc_port_t ;
struct TYPE_9__ {scalar_t__ ip_sorights; } ;


 int FALSE ;
 int IPC_PORT_ADJUST_SR_NONE ;
 int IP_VALID (TYPE_1__*) ;
 int assert (int) ;
 int ip_lock (TYPE_1__*) ;
 int ip_release (TYPE_1__*) ;
 int ip_unlock (TYPE_1__*) ;
 int ipc_port_adjust_special_reply_port (TYPE_1__*,int ,int ) ;
 int panic (char*,TYPE_1__*) ;

void
ipc_port_release_sonce(
 ipc_port_t port)
{
 if (!IP_VALID(port))
  return;

 ipc_port_adjust_special_reply_port(port, IPC_PORT_ADJUST_SR_NONE, FALSE);

 ip_lock(port);

 assert(port->ip_sorights > 0);
 if (port->ip_sorights == 0) {
  panic("Over-release of port %p send-once right!", port);
 }

 port->ip_sorights--;

 ip_unlock(port);
 ip_release(port);
}
