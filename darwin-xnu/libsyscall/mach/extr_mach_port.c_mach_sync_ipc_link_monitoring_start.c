
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_t ;
typedef scalar_t__ kern_return_t ;
typedef int boolean_t ;


 scalar_t__ KERN_SUCCESS ;
 int MACH_PORT_DEAD ;
 int MACH_PORT_RIGHT_SEND ;
 scalar_t__ _kernelrpc_mach_port_special_reply_port_reset_link (int ,int ,int *) ;
 int mach_port_deallocate (int ,int ) ;
 scalar_t__ mach_port_mod_refs (int ,int ,int ,int) ;
 int mach_task_self () ;
 int mig_get_special_reply_port () ;

kern_return_t
mach_sync_ipc_link_monitoring_start(mach_port_t *special_reply_port)
{
 mach_port_t srp;
 boolean_t link_broken;
 kern_return_t kr;

 *special_reply_port = MACH_PORT_DEAD;

 srp = mig_get_special_reply_port();

 kr = mach_port_mod_refs(mach_task_self(), srp, MACH_PORT_RIGHT_SEND, 1);

 if (kr != KERN_SUCCESS) {
  return kr;
 }

 kr = _kernelrpc_mach_port_special_reply_port_reset_link(mach_task_self(), srp, &link_broken);
 if (kr != KERN_SUCCESS) {
  mach_port_deallocate(mach_task_self(), srp);
  return kr;
 }

 *special_reply_port = srp;

 return kr;
}
