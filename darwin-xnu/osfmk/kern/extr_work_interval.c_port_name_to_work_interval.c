
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_interval {int dummy; } ;
typedef int mach_port_name_t ;
typedef scalar_t__ kern_return_t ;
typedef int ipc_port_t ;


 int IPC_PORT_NULL ;
 int IP_VALID (int ) ;
 scalar_t__ KERN_INVALID_CAPABILITY ;
 scalar_t__ KERN_INVALID_NAME ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_PORT_VALID (int ) ;
 int assert (int ) ;
 int current_space () ;
 int ip_unlock (int ) ;
 scalar_t__ ipc_port_translate_send (int ,int ,int *) ;
 struct work_interval* work_interval_port_convert_locked (int ) ;

__attribute__((used)) static kern_return_t
port_name_to_work_interval(mach_port_name_t name,
                           struct work_interval **work_interval)
{
 if (!MACH_PORT_VALID(name))
  return KERN_INVALID_NAME;

 ipc_port_t port = IPC_PORT_NULL;
 kern_return_t kr = KERN_SUCCESS;

 kr = ipc_port_translate_send(current_space(), name, &port);
 if (kr != KERN_SUCCESS)
  return kr;


 assert(IP_VALID(port));

 struct work_interval *converted_work_interval;

 converted_work_interval = work_interval_port_convert_locked(port);


 if (converted_work_interval == ((void*)0))
  kr = KERN_INVALID_CAPABILITY;

 ip_unlock(port);

 if (kr == KERN_SUCCESS)
  *work_interval = converted_work_interval;

 return kr;

}
