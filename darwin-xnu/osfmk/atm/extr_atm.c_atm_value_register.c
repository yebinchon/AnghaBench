
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;
typedef int atm_value_t ;
typedef scalar_t__ atm_task_descriptor_t ;
typedef int atm_guard_t ;


 scalar_t__ ATM_TASK_DESCRIPTOR_NULL ;
 int KERN_INVALID_TASK ;
 int atm_listener_insert (int ,scalar_t__,int ) ;

__attribute__((used)) static kern_return_t
atm_value_register(
 atm_value_t atm_value,
 atm_task_descriptor_t task_descriptor,
 atm_guard_t guard)
{
 kern_return_t kr;

 if (task_descriptor == ATM_TASK_DESCRIPTOR_NULL)
  return KERN_INVALID_TASK;

 kr = atm_listener_insert(atm_value, task_descriptor, guard);
 return kr;
}
