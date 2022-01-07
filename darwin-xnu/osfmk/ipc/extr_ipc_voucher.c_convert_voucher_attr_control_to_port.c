
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef TYPE_1__* ipc_voucher_attr_control_t ;
typedef TYPE_2__* ipc_port_t ;
typedef scalar_t__ ipc_kobject_t ;
struct TYPE_25__ {scalar_t__ ip_kobject; int ip_srights; int ip_mscount; struct TYPE_25__* ip_nsrequest; } ;
struct TYPE_24__ {TYPE_2__* ivac_port; } ;


 scalar_t__ IKOT_VOUCHER_ATTR_CONTROL ;
 TYPE_2__* IP_NULL ;
 int IP_VALID (TYPE_2__*) ;
 TYPE_1__* IVAC_NULL ;
 scalar_t__ OSCompareAndSwapPtr (TYPE_2__*,TYPE_2__*,TYPE_2__**) ;
 int assert (int) ;
 int ip_active (TYPE_2__*) ;
 scalar_t__ ip_kotype (TYPE_2__*) ;
 int ip_lock (TYPE_2__*) ;
 int ip_unlock (TYPE_2__*) ;
 int ipc_kobject_set_atomically (TYPE_2__*,scalar_t__,scalar_t__) ;
 TYPE_2__* ipc_port_alloc_kernel () ;
 int ipc_port_dealloc_kernel (TYPE_2__*) ;
 TYPE_2__* ipc_port_make_send_locked (TYPE_2__*) ;
 int ipc_port_make_sonce_locked (TYPE_2__*) ;
 int ipc_port_nsrequest (TYPE_2__*,int ,int ,TYPE_2__**) ;
 int ivac_release (TYPE_1__*) ;

ipc_port_t
convert_voucher_attr_control_to_port(ipc_voucher_attr_control_t control)
{
 ipc_port_t port, send;

 if (IVAC_NULL == control)
  return (IP_NULL);


 port = control->ivac_port;
 if (!IP_VALID(port)) {
  port = ipc_port_alloc_kernel();
  assert(IP_VALID(port));
  if (OSCompareAndSwapPtr(IP_NULL, port, &control->ivac_port)) {
   ip_lock(port);
   ipc_kobject_set_atomically(port, (ipc_kobject_t) control, IKOT_VOUCHER_ATTR_CONTROL);
  } else {
   ipc_port_dealloc_kernel(port);
   port = control->ivac_port;
   ip_lock(port);
   assert(ip_kotype(port) == IKOT_VOUCHER_ATTR_CONTROL);
   assert(port->ip_kobject == (ipc_kobject_t)control);
  }
 } else
  ip_lock(port);

 assert(ip_active(port));
 send = ipc_port_make_send_locked(port);

 if (1 == port->ip_srights) {
  ipc_port_t old_notify;


  assert(IP_NULL == port->ip_nsrequest);
  ipc_port_nsrequest(port, port->ip_mscount, ipc_port_make_sonce_locked(port), &old_notify);
  assert(IP_NULL == old_notify);

 } else {

  ip_unlock(port);
  ivac_release(control);
 }
 return (send);
}
