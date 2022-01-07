
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_t ;
typedef scalar_t__ kern_return_t ;


 int IPC_PORT_VALID (int ) ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_PORT_NULL ;
 scalar_t__ host_get_telemetry_port (int ,int *) ;
 int host_priv_self () ;
 int ipc_port_release_send (int ) ;
 int telemetry_notification (int ,int ) ;

__attribute__((used)) static void
telemetry_notify_user(void)
{
 mach_port_t user_port = MACH_PORT_NULL;

 kern_return_t kr = host_get_telemetry_port(host_priv_self(), &user_port);
 if ((kr != KERN_SUCCESS) || !IPC_PORT_VALID(user_port)) {
  return;
 }

 telemetry_notification(user_port, 0);
 ipc_port_release_send(user_port);
}
