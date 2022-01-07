
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
struct TYPE_4__ {scalar_t__ Lock_owner; int Lock; } ;


 scalar_t__ current_thread () ;
 int lck_rw_done (int *) ;
 int panic (char*,TYPE_1__*) ;

void
vm_object_unlock(vm_object_t object)
{







 lck_rw_done(&object->Lock);
}
