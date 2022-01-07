
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_3__ {int Lock_owner; int Lock; } ;


 scalar_t__ TRUE ;
 int current_thread () ;
 scalar_t__ lck_rw_try_lock_exclusive (int *) ;

boolean_t
_vm_object_lock_try(vm_object_t object)
{
 boolean_t retval;

 retval = lck_rw_try_lock_exclusive(&object->Lock);




 return (retval);
}
