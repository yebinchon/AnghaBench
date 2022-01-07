
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int mach_port_t ;
typedef scalar_t__ kern_return_t ;


 int IPC_PORT_VALID (int ) ;
 scalar_t__ KERN_SUCCESS ;
 int coalition_notification (int ,int ,int ) ;
 scalar_t__ host_get_coalition_port (int ,int *) ;
 int host_priv_self () ;
 int ipc_port_release_send (int ) ;

__attribute__((used)) static void
coalition_notify_user(uint64_t id, uint32_t flags)
{
 mach_port_t user_port;
 kern_return_t kr;

 kr = host_get_coalition_port(host_priv_self(), &user_port);
 if ((kr != KERN_SUCCESS) || !IPC_PORT_VALID(user_port)) {
  return;
 }

 coalition_notification(user_port, id, flags);
 ipc_port_release_send(user_port);
}
