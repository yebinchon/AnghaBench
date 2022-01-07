
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
typedef int boolean_t ;
struct TYPE_5__ {int Lock; } ;


 int FALSE ;
 int lck_rw_lock_yield_shared (int *,int ) ;
 int vm_object_lock_assert_shared (TYPE_1__*) ;
 int vm_object_lock_avoid (TYPE_1__*) ;

boolean_t
vm_object_lock_yield_shared(vm_object_t object)
{
 boolean_t retval = FALSE, force_yield = FALSE;;

 vm_object_lock_assert_shared(object);

 force_yield = vm_object_lock_avoid(object);

 retval = lck_rw_lock_yield_shared(&object->Lock, force_yield);

 return (retval);
}
