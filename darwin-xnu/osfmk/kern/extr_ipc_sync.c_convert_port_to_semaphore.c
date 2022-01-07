
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ semaphore_t ;
typedef TYPE_1__* ipc_port_t ;
struct TYPE_6__ {scalar_t__ ip_kobject; } ;


 scalar_t__ IKOT_SEMAPHORE ;
 scalar_t__ IP_VALID (TYPE_1__*) ;
 scalar_t__ SEMAPHORE_NULL ;
 int assert (int ) ;
 int ip_active (TYPE_1__*) ;
 scalar_t__ ip_kotype (TYPE_1__*) ;
 int semaphore_reference (scalar_t__) ;

semaphore_t
convert_port_to_semaphore (ipc_port_t port)
{

 if (IP_VALID(port)) {
  semaphore_t semaphore;






  if (ip_kotype(port) == IKOT_SEMAPHORE) {
   assert(ip_active(port));
   semaphore = (semaphore_t) port->ip_kobject;
   semaphore_reference(semaphore);
   return (semaphore);
  }
 }
 return SEMAPHORE_NULL;
}
