
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int mach_port_t ;
typedef scalar_t__ kern_return_t ;


 int DBG_FUNC_START ;
 int DBG_MACH_SYSDIAGNOSE ;
 int IPC_PORT_VALID (int ) ;
 int KERNEL_DEBUG_CONSTANT (int,int ,int ,int ,int ,int ) ;
 scalar_t__ KERN_SUCCESS ;
 int MACHDBG_CODE (int ,int ) ;
 int SYSDIAGNOSE_NOTIFY_USER ;
 scalar_t__ host_get_sysdiagnose_port (int ,int *) ;
 int host_priv_self () ;
 int ipc_port_release_send (int ) ;
 scalar_t__ send_sysdiagnose_notification (int ,int ) ;

kern_return_t
sysdiagnose_notify_user(uint32_t keycode)
{
 mach_port_t user_port;
 kern_return_t kr;

 kr = host_get_sysdiagnose_port(host_priv_self(), &user_port);
 if ((kr != KERN_SUCCESS) || !IPC_PORT_VALID(user_port)) {
  return kr;
 }

 KERNEL_DEBUG_CONSTANT(MACHDBG_CODE(DBG_MACH_SYSDIAGNOSE, SYSDIAGNOSE_NOTIFY_USER) | DBG_FUNC_START, 0, 0, 0, 0, 0);

 kr = send_sysdiagnose_notification(user_port, keycode);
 ipc_port_release_send(user_port);
 return kr;
}
