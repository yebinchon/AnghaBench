
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
struct TYPE_14__ {int ref_count; scalar_t__ res_count; int named; struct TYPE_14__* copy; scalar_t__ vo_shadow_offset; struct TYPE_14__* shadow; int phys_contiguous; } ;


 TYPE_1__* VM_OBJECT_NULL ;
 int assert (int) ;
 int object_bypasses ;
 int vm_object_activity_begin (TYPE_1__*) ;
 int vm_object_activity_end (TYPE_1__*) ;
 int vm_object_deallocate (TYPE_1__*) ;
 int vm_object_lock (TYPE_1__*) ;
 int vm_object_lock_assert_exclusive (TYPE_1__*) ;
 int vm_object_reference (TYPE_1__*) ;
 int vm_object_res_deallocate (TYPE_1__*) ;
 int vm_object_res_reference (TYPE_1__*) ;
 int vm_object_unlock (TYPE_1__*) ;

__attribute__((used)) static void
vm_object_do_bypass(
 vm_object_t object,
 vm_object_t backing_object)
{





 vm_object_lock_assert_exclusive(object);
 vm_object_lock_assert_exclusive(backing_object);
 vm_object_reference(backing_object->shadow);


 assert(!object->phys_contiguous);
 assert(!backing_object->phys_contiguous);
 object->shadow = backing_object->shadow;
 if (object->shadow) {
  object->vo_shadow_offset += backing_object->vo_shadow_offset;
 } else {

  object->vo_shadow_offset = 0;
 }





 if (backing_object->copy == object) {
  backing_object->copy = VM_OBJECT_NULL;
 }
 if (backing_object->ref_count > 2 ||
     (!backing_object->named && backing_object->ref_count > 1)) {
  vm_object_lock_assert_exclusive(backing_object);
  backing_object->ref_count--;





  vm_object_unlock(backing_object);
 } else {
  vm_object_activity_begin(object);
  vm_object_unlock(object);

  vm_object_unlock(backing_object);
  vm_object_deallocate(backing_object);
  vm_object_lock(object);
  vm_object_activity_end(object);
 }

 object_bypasses++;
}
