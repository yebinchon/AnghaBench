
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int semaphore_t ;
typedef int mach_port_name_t ;
typedef scalar_t__ kern_return_t ;
typedef int ipc_port_t ;
typedef int ipc_object_t ;


 int IP_VALID (int ) ;
 scalar_t__ KERN_INVALID_CAPABILITY ;
 scalar_t__ KERN_INVALID_NAME ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_PORT_RIGHT_SEND ;
 int MACH_PORT_VALID (int ) ;
 int SEMAPHORE_NULL ;
 int assert (int ) ;
 int convert_port_to_semaphore (int ) ;
 int current_space () ;
 int ip_unlock (int ) ;
 scalar_t__ ipc_object_translate (int ,int ,int ,int *) ;

kern_return_t
port_name_to_semaphore(
 mach_port_name_t name,
 semaphore_t *semaphorep)
{
 ipc_port_t kern_port;
 kern_return_t kr;

 if (!MACH_PORT_VALID(name)) {
  *semaphorep = SEMAPHORE_NULL;
  return KERN_INVALID_NAME;
 }

 kr = ipc_object_translate(current_space(), name, MACH_PORT_RIGHT_SEND,
      (ipc_object_t *) &kern_port);
 if (kr != KERN_SUCCESS) {
  *semaphorep = SEMAPHORE_NULL;
  return kr;
 }

 assert(IP_VALID(kern_port));

 *semaphorep = convert_port_to_semaphore(kern_port);
 if (*semaphorep == SEMAPHORE_NULL) {

  kr = KERN_INVALID_CAPABILITY;
 } else {
  kr = KERN_SUCCESS;
 }
 ip_unlock(kern_port);

 return kr;
}
