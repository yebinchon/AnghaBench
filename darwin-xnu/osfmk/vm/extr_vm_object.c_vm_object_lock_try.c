
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_object_t ;
typedef int boolean_t ;


 int _vm_object_lock_try (int ) ;
 scalar_t__ get_preemption_level () ;
 scalar_t__ ml_get_interrupts_enabled () ;
 int mutex_pause (int) ;
 scalar_t__ vm_object_lock_avoid (int ) ;

boolean_t
vm_object_lock_try(vm_object_t object)
{



 if (vm_object_lock_avoid(object) && ml_get_interrupts_enabled() && get_preemption_level()==0) {
  mutex_pause(2);
 }
 return _vm_object_lock_try(object);
}
