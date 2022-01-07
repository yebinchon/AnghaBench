
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct fileglob {int dummy; } ;
struct TYPE_10__ {TYPE_3__* msgh_remote_port; } ;
struct TYPE_11__ {TYPE_1__ not_header; } ;
typedef TYPE_2__ mach_no_senders_notification_t ;
typedef int mach_msg_header_t ;
typedef TYPE_3__* ipc_port_t ;
struct TYPE_12__ {scalar_t__ ip_srights; scalar_t__ ip_kobject; } ;


 scalar_t__ IKOT_FILEPORT ;
 int IP_VALID (TYPE_3__*) ;
 int fileport_releasefg (struct fileglob*) ;
 int ip_active (TYPE_3__*) ;
 scalar_t__ ip_kotype (TYPE_3__*) ;
 int ip_lock (TYPE_3__*) ;
 int ip_unlock (TYPE_3__*) ;
 int ipc_port_dealloc_kernel (TYPE_3__*) ;
 int panic (char*) ;

void
fileport_notify(mach_msg_header_t *msg)
{
 mach_no_senders_notification_t *notification = (void *)msg;
 ipc_port_t port = notification->not_header.msgh_remote_port;
 struct fileglob *fg = ((void*)0);

 if (!IP_VALID(port))
  panic("Invalid port passed to fileport_notify()\n");

 ip_lock(port);

 fg = (struct fileglob *)port->ip_kobject;

 if (!ip_active(port))
  panic("Inactive port passed to fileport_notify()\n");
 if (ip_kotype(port) != IKOT_FILEPORT)
  panic("Port of type other than IKOT_FILEPORT passed to fileport_notify()\n");
 if (fg == ((void*)0))
  panic("fileport without an assocated fileglob\n");

 if (port->ip_srights == 0) {
  ip_unlock(port);

  fileport_releasefg(fg);
  ipc_port_dealloc_kernel(port);
 } else {
  ip_unlock(port);
 }
}
