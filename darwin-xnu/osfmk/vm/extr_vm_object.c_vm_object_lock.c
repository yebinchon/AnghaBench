
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
struct TYPE_4__ {int Lock_owner; int Lock; } ;


 int current_thread () ;
 int lck_rw_lock_exclusive (int *) ;
 int mutex_pause (int) ;
 int scan_object_collision ;
 TYPE_1__* vm_pageout_scan_wants_object ;

void
vm_object_lock(vm_object_t object)
{
        if (object == vm_pageout_scan_wants_object) {
         scan_object_collision++;
         mutex_pause(2);
 }
        lck_rw_lock_exclusive(&object->Lock);



}
