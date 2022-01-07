
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int mach_port_name_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ ipc_space_t ;
typedef int ipc_port_t ;
typedef int boolean_t ;


 scalar_t__ IS_NULL ;
 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_INVALID_NAME ;
 scalar_t__ KERN_INVALID_TASK ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_PORT_VALID (int ) ;
 int ip_unlock (int ) ;
 scalar_t__ ipc_port_translate_receive (scalar_t__,int ,int *) ;
 int kGUARD_EXC_INVALID_ARGUMENT ;
 int kGUARD_EXC_INVALID_NAME ;
 int kGUARD_EXC_INVALID_RIGHT ;
 int mach_port_guard_exception (int ,int ,int ,int ) ;
 scalar_t__ mach_port_guard_locked (int ,int ,int ) ;

kern_return_t
mach_port_guard(
 ipc_space_t space,
 mach_port_name_t name,
 uint64_t guard,
 boolean_t strict)
{
 kern_return_t kr;
 ipc_port_t port;

 if (space == IS_NULL)
  return KERN_INVALID_TASK;

 if (!MACH_PORT_VALID(name))
  return KERN_INVALID_NAME;


 kr = ipc_port_translate_receive(space, name, &port);
 if (kr != KERN_SUCCESS) {
  mach_port_guard_exception(name, 0, 0,
                            ((KERN_INVALID_NAME == kr) ?
                             kGUARD_EXC_INVALID_NAME :
                             kGUARD_EXC_INVALID_RIGHT));
  return kr;
 }


 kr = mach_port_guard_locked(port, guard, strict);
 ip_unlock(port);

 if (KERN_INVALID_ARGUMENT == kr) {
  mach_port_guard_exception(name, 0, 0, kGUARD_EXC_INVALID_ARGUMENT);
 }

 return kr;
}
