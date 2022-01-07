
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
typedef scalar_t__ vm_object_size_t ;
typedef scalar_t__ vm_object_offset_t ;
typedef int uint32_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_10__ {scalar_t__ copy; scalar_t__ vo_size; int pager_ready; } ;


 scalar_t__ FALSE ;
 scalar_t__ KERN_FAILURE ;
 scalar_t__ KERN_SUCCESS ;
 int THREAD_UNINT ;
 scalar_t__ TRUE ;
 int VM_OBJECT_EVENT_COPY_CALL ;
 int VM_OBJECT_EVENT_PAGER_READY ;
 scalar_t__ VM_OBJECT_NULL ;
 int assert (int) ;
 int copy_call_count ;
 int copy_call_restart_count ;
 int copy_call_sleep_count ;
 int mutex_pause (int ) ;
 int vm_object_lock (TYPE_1__*) ;
 int vm_object_lock_try (TYPE_1__*) ;
 int vm_object_set_wanted (TYPE_1__*,int ) ;
 int vm_object_sleep (TYPE_1__*,int ,int ) ;
 int vm_object_unlock (TYPE_1__*) ;
 scalar_t__ vm_object_wanted (TYPE_1__*,int ) ;

__attribute__((used)) static kern_return_t
vm_object_copy_call(
 vm_object_t src_object,
 vm_object_offset_t src_offset,
 vm_object_size_t size,
 vm_object_t *_result_object)
{
 kern_return_t kr;
 vm_object_t copy;
 boolean_t check_ready = FALSE;
 uint32_t try_failed_count = 0;
 copy_call_count++;
 while (vm_object_wanted(src_object, VM_OBJECT_EVENT_COPY_CALL)) {
  vm_object_sleep(src_object, VM_OBJECT_EVENT_COPY_CALL,
          THREAD_UNINT);
  copy_call_restart_count++;
 }
 vm_object_set_wanted(src_object, VM_OBJECT_EVENT_COPY_CALL);
 vm_object_unlock(src_object);
 kr = KERN_FAILURE;
 if (kr != KERN_SUCCESS) {
  return kr;
 }




 vm_object_lock(src_object);
 while (vm_object_wanted(src_object, VM_OBJECT_EVENT_COPY_CALL)) {
  vm_object_sleep(src_object, VM_OBJECT_EVENT_COPY_CALL,
          THREAD_UNINT);
  copy_call_sleep_count++;
 }
Retry:
 assert(src_object->copy != VM_OBJECT_NULL);
 copy = src_object->copy;
 if (!vm_object_lock_try(copy)) {
  vm_object_unlock(src_object);

  try_failed_count++;
  mutex_pause(try_failed_count);

  vm_object_lock(src_object);
  goto Retry;
 }
 if (copy->vo_size < src_offset+size)
  copy->vo_size = src_offset+size;

 if (!copy->pager_ready)
  check_ready = TRUE;




 *_result_object = copy;
 vm_object_unlock(copy);
 vm_object_unlock(src_object);


 if (check_ready == TRUE) {
  vm_object_lock(copy);
  while (!copy->pager_ready) {
   vm_object_sleep(copy, VM_OBJECT_EVENT_PAGER_READY, THREAD_UNINT);
  }
  vm_object_unlock(copy);
 }

 return KERN_SUCCESS;
}
