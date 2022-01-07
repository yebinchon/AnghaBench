
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_name_t ;
typedef scalar_t__ kern_return_t ;
typedef int ipc_port_t ;
typedef int host_t ;


 int HOST_NULL ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ MACH_PORT_VALID (int ) ;
 int convert_port_to_host (int ) ;
 int current_space () ;
 int ip_unlock (int ) ;
 scalar_t__ ipc_port_translate_send (int ,int ,int *) ;

host_t
port_name_to_host(
 mach_port_name_t name)
{

 host_t host = HOST_NULL;
 kern_return_t kr;
 ipc_port_t port;

 if (MACH_PORT_VALID(name)) {
  kr = ipc_port_translate_send(current_space(), name, &port);
  if (kr == KERN_SUCCESS) {
   host = convert_port_to_host(port);
   ip_unlock(port);
  }
 }
 return host;
}
