
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct fileglob {int dummy; } ;
typedef TYPE_1__* ipc_port_t ;
struct TYPE_8__ {scalar_t__ ip_kobject; } ;


 scalar_t__ IKOT_FILEPORT ;
 int IP_VALID (TYPE_1__*) ;
 scalar_t__ ip_active (TYPE_1__*) ;
 scalar_t__ ip_kotype (TYPE_1__*) ;
 int ip_lock (TYPE_1__*) ;
 int ip_unlock (TYPE_1__*) ;

struct fileglob *
fileport_port_to_fileglob(ipc_port_t port)
{
 struct fileglob *fg = ((void*)0);

 if (!IP_VALID(port))
  return ((void*)0);

 ip_lock(port);
 if (ip_active(port) && IKOT_FILEPORT == ip_kotype(port))
  fg = (void *)port->ip_kobject;
 ip_unlock(port);

 return fg;
}
