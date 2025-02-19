
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* msgh_remote_port; } ;
struct TYPE_7__ {TYPE_1__ not_header; } ;
typedef TYPE_2__ mach_no_senders_notification_t ;
typedef int mach_msg_header_t ;
typedef scalar_t__ ipc_voucher_t ;
typedef TYPE_3__* ipc_port_t ;
struct TYPE_8__ {scalar_t__ ip_kobject; } ;


 scalar_t__ IKOT_VOUCHER ;
 int assert (int) ;
 int ip_active (TYPE_3__*) ;
 scalar_t__ ip_kotype (TYPE_3__*) ;
 int ipc_voucher_release (scalar_t__) ;

void
ipc_voucher_notify(mach_msg_header_t *msg)
{
 mach_no_senders_notification_t *notification = (void *)msg;
 ipc_port_t port = notification->not_header.msgh_remote_port;
 ipc_voucher_t iv;

 assert(ip_active(port));
 assert(IKOT_VOUCHER == ip_kotype(port));
 iv = (ipc_voucher_t)port->ip_kobject;

 ipc_voucher_release(iv);
}
