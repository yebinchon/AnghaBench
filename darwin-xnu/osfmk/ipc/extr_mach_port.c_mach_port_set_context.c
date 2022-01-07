
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int mach_vm_address_t ;
typedef int mach_port_name_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ ipc_space_t ;
typedef TYPE_1__* ipc_port_t ;
struct TYPE_4__ {int ip_context; scalar_t__ ip_strict_guard; } ;


 scalar_t__ IS_NULL ;
 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_INVALID_RIGHT ;
 scalar_t__ KERN_INVALID_TASK ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_PORT_VALID (int ) ;
 int ip_unlock (TYPE_1__*) ;
 scalar_t__ ipc_port_translate_receive (scalar_t__,int ,TYPE_1__**) ;
 int kGUARD_EXC_SET_CONTEXT ;
 int mach_port_guard_exception (int ,int ,int ,int ) ;

kern_return_t
mach_port_set_context(
 ipc_space_t space,
 mach_port_name_t name,
 mach_vm_address_t context)
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


 if(port->ip_strict_guard) {
  uint64_t portguard = port->ip_context;
  ip_unlock(port);

  mach_port_guard_exception(name, context, portguard, kGUARD_EXC_SET_CONTEXT);
  return KERN_INVALID_ARGUMENT;
 }

 port->ip_context = context;

 ip_unlock(port);
 return KERN_SUCCESS;
}
