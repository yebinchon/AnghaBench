
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_t ;
typedef int kern_return_t ;
typedef int boolean_t ;


 int TRUE ;
 int _kernelrpc_mach_port_special_reply_port_reset_link (int ,int ,int*) ;
 int mach_port_deallocate (int ,int ) ;
 int mach_task_self () ;

kern_return_t
mach_sync_ipc_link_monitoring_stop(mach_port_t srp, boolean_t* in_effect)
{
 kern_return_t kr;
 boolean_t link_broken = TRUE;

 kr = _kernelrpc_mach_port_special_reply_port_reset_link(mach_task_self(), srp, &link_broken);






 *in_effect = !link_broken;

 mach_port_deallocate(mach_task_self(), srp);

 return kr;
}
