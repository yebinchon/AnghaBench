
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef TYPE_2__* vm_object_t ;
typedef int kern_return_t ;
struct TYPE_14__ {scalar_t__ prev; scalar_t__ next; } ;
struct TYPE_15__ {scalar_t__ ref_count; scalar_t__ paging_in_progress; scalar_t__ activity_in_progress; struct TYPE_15__* copy; int pageout; struct TYPE_15__* shadow; TYPE_1__ cached_list; int internal; void* alive; scalar_t__ terminating; void* pager_trusted; scalar_t__ shadow_severed; int * pager; scalar_t__ can_persist; } ;


 void* FALSE ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int REAP_TERMINATE ;
 scalar_t__ TRUE ;
 TYPE_2__* VM_OBJECT_NULL ;
 int XPR (int ,char*,TYPE_2__*,scalar_t__,int ,int ,int ) ;
 int XPR_VM_OBJECT ;
 int assert (int) ;
 int vm_object_cache_remove (TYPE_2__*) ;
 int vm_object_lock (TYPE_2__*) ;
 int vm_object_lock_assert_exclusive (TYPE_2__*) ;
 int vm_object_reap (TYPE_2__*) ;
 int vm_object_reap_async (TYPE_2__*) ;
 int vm_object_reap_pages (TYPE_2__*,int ) ;
 int vm_object_res_deallocate (TYPE_2__*) ;
 int vm_object_unlock (TYPE_2__*) ;

__attribute__((used)) static kern_return_t
vm_object_terminate(
 vm_object_t object)
{
 vm_object_t shadow_object;

 XPR(XPR_VM_OBJECT, "vm_object_terminate, object 0x%X ref %d\n",
  object, object->ref_count, 0, 0, 0);

 vm_object_lock_assert_exclusive(object);

 if (!object->pageout && (!object->internal && object->can_persist) &&
     (object->pager != ((void*)0) || object->shadow_severed)) {





  object->pager_trusted = FALSE;

  vm_object_reap_pages(object, REAP_TERMINATE);
 }



 if (object->terminating) {
  vm_object_lock_assert_exclusive(object);
  object->ref_count--;
  assert(object->ref_count > 0);
  vm_object_unlock(object);
  return KERN_FAILURE;
 }





 if (object->ref_count != 1) {
  vm_object_lock_assert_exclusive(object);
  object->ref_count--;
  assert(object->ref_count > 0);
  vm_object_res_deallocate(object);
  vm_object_unlock(object);
  return KERN_FAILURE;
 }





 object->terminating = TRUE;
 object->alive = FALSE;

 if (!object->internal &&
     object->cached_list.next &&
     object->cached_list.prev)
  vm_object_cache_remove(object);






 if (((shadow_object = object->shadow) != VM_OBJECT_NULL) &&
     !(object->pageout)) {
  vm_object_lock(shadow_object);
  if (shadow_object->copy == object)
   shadow_object->copy = VM_OBJECT_NULL;
  vm_object_unlock(shadow_object);
 }

 if (object->paging_in_progress != 0 ||
     object->activity_in_progress != 0) {
  vm_object_reap_async(object);
  vm_object_unlock(object);







  return KERN_FAILURE;
 }



 vm_object_reap(object);
 object = VM_OBJECT_NULL;
 return KERN_SUCCESS;
}
