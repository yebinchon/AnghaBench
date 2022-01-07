
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 int MACH_VOUCHER_ATTR_KEY_PTHPRIORITY ;
 int ipc_pthread_priority_manager ;
 int ipc_pthread_priority_voucher_attr_control ;
 scalar_t__ ipc_register_well_known_mach_voucher_attr_manager (int *,int ,int ,int *) ;
 int kprintf (char*) ;
 int panic (char*) ;

void
ipc_pthread_priority_init()
{
 kern_return_t kr = KERN_SUCCESS;


 kr = ipc_register_well_known_mach_voucher_attr_manager(
                 &ipc_pthread_priority_manager,
                 0,
                 MACH_VOUCHER_ATTR_KEY_PTHPRIORITY,
                 &ipc_pthread_priority_voucher_attr_control);
 if (kr != KERN_SUCCESS )
  panic("IPC_PTHREAD_PRIORITY subsystem initialization failed");

 kprintf("IPC_PTHREAD_PRIORITY subsystem is initialized\n");
 return ;
}
