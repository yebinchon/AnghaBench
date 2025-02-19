
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* msgh_remote_port; } ;
struct TYPE_9__ {scalar_t__ not_count; TYPE_1__ not_header; } ;
typedef TYPE_2__ mach_no_senders_notification_t ;
typedef int mach_msg_header_t ;
typedef scalar_t__ ipc_voucher_attr_control_t ;
typedef TYPE_3__* ipc_port_t ;
struct TYPE_10__ {scalar_t__ ip_mscount; scalar_t__ ip_kobject; } ;


 scalar_t__ IKOT_VOUCHER_ATTR_CONTROL ;
 int assert (int) ;
 int ip_active (TYPE_3__*) ;
 scalar_t__ ip_kotype (TYPE_3__*) ;
 int ip_lock (TYPE_3__*) ;
 int ip_unlock (TYPE_3__*) ;
 int ivac_release (scalar_t__) ;

void
ipc_voucher_attr_control_notify(mach_msg_header_t *msg)
{
 mach_no_senders_notification_t *notification = (void *)msg;
 ipc_port_t port = notification->not_header.msgh_remote_port;
 ipc_voucher_attr_control_t ivac;

 assert(IKOT_VOUCHER_ATTR_CONTROL == ip_kotype(port));
 ip_lock(port);
 assert(ip_active(port));


 if (port->ip_mscount == notification->not_count) {
  ivac = (ipc_voucher_attr_control_t)port->ip_kobject;
  ip_unlock(port);

  ivac_release(ivac);
 } else {
  ip_unlock(port);
 }
}
