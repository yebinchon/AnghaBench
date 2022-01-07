
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
typedef int boolean_t ;
struct TYPE_4__ {int Lock; } ;


 int lck_rw_try_lock_shared (int *) ;
 int mutex_pause (int) ;
 scalar_t__ vm_object_lock_avoid (TYPE_1__*) ;

boolean_t
vm_object_lock_try_shared(vm_object_t object)
{
        if (vm_object_lock_avoid(object)) {
         mutex_pause(2);
 }
 return (lck_rw_try_lock_shared(&object->Lock));
}
