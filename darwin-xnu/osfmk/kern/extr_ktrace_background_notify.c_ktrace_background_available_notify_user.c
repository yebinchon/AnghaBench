
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_t ;
typedef scalar_t__ kern_return_t ;


 int IPC_PORT_VALID (int ) ;
 scalar_t__ KERN_FAILURE ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ host_get_ktrace_background_port (int ,int *) ;
 int host_priv_self () ;
 int ipc_port_release_send (int ) ;
 scalar_t__ send_ktrace_background_available (int ) ;

kern_return_t
ktrace_background_available_notify_user(void)
{
 mach_port_t user_port;
 kern_return_t kr;

 kr = host_get_ktrace_background_port(host_priv_self(), &user_port);
 if (kr != KERN_SUCCESS || !IPC_PORT_VALID(user_port)) {
  return KERN_FAILURE;
 }

 kr = send_ktrace_background_available(user_port);
 ipc_port_release_send(user_port);
 return kr;
}
