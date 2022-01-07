
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_name_t ;
typedef int mach_port_mscount_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ ipc_space_t ;
typedef int ipc_port_t ;


 scalar_t__ IS_NULL ;
 scalar_t__ KERN_INVALID_RIGHT ;
 scalar_t__ KERN_INVALID_TASK ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_PORT_VALID (int ) ;
 int ip_unlock (int ) ;
 int ipc_port_set_mscount (int ,int ) ;
 scalar_t__ ipc_port_translate_receive (scalar_t__,int ,int *) ;

kern_return_t
mach_port_set_mscount(
 ipc_space_t space,
 mach_port_name_t name,
 mach_port_mscount_t mscount)
{
 ipc_port_t port;
 kern_return_t kr;

 if (space == IS_NULL)
  return KERN_INVALID_TASK;

 if (!MACH_PORT_VALID(name))
  return KERN_INVALID_RIGHT;

 kr = ipc_port_translate_receive(space, name, &port);
 if (kr != KERN_SUCCESS)
  return kr;


 ipc_port_set_mscount(port, mscount);

 ip_unlock(port);
 return KERN_SUCCESS;
}
