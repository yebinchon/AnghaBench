
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_name_t ;
typedef scalar_t__ kern_return_t ;
typedef int ipc_space_t ;
typedef scalar_t__ ipc_port_t ;
typedef int ipc_object_t ;


 int IOT_PORT ;
 int IP_CALLSTACK_MAX ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_PORT_TYPE_RECEIVE ;
 scalar_t__ ipc_object_alloc_name (int ,int ,int ,int ,int ,int *) ;
 int ipc_port_callstack_init_debug (uintptr_t*,int) ;
 int ipc_port_init (scalar_t__,int ,int ) ;
 int ipc_port_init_debug (scalar_t__,uintptr_t*,int) ;

kern_return_t
ipc_port_alloc_name(
 ipc_space_t space,
 mach_port_name_t name,
 ipc_port_t *portp)
{
 ipc_port_t port;
 kern_return_t kr;






 kr = ipc_object_alloc_name(space, IOT_PORT,
       MACH_PORT_TYPE_RECEIVE, 0,
       name, (ipc_object_t *) &port);
 if (kr != KERN_SUCCESS)
  return kr;



 ipc_port_init(port, space, name);





 *portp = port;

 return KERN_SUCCESS;
}
