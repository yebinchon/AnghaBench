
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int * memory_object_t ;
typedef int memory_object_size_t ;
struct TYPE_15__ {int vo_size; scalar_t__ paging_offset; scalar_t__ pager_created; int pager_initialized; } ;


 int FALSE ;
 int PAGE_SIZE ;
 int THREAD_UNINT ;
 scalar_t__ TRUE ;
 int VM_OBJECT_EVENT_INITIALIZED ;
 TYPE_1__* VM_OBJECT_NULL ;
 int assert (int) ;
 int compressor_memory_object_create (int ,int **) ;
 TYPE_1__* kernel_object ;
 int memory_object_deallocate (int *) ;
 int panic (char*,TYPE_1__*,TYPE_1__*,...) ;
 int printf (char*,TYPE_1__*,int ,int) ;
 int vm_object_lock (TYPE_1__*) ;
 TYPE_1__* vm_object_memory_object_associate (int *,TYPE_1__*,int,int ) ;
 int vm_object_paging_begin (TYPE_1__*) ;
 int vm_object_paging_end (TYPE_1__*) ;
 int vm_object_sleep (TYPE_1__*,int ,int ) ;
 int vm_object_unlock (TYPE_1__*) ;

void
vm_object_compressor_pager_create(
 vm_object_t object)
{
 memory_object_t pager;
 vm_object_t pager_object = VM_OBJECT_NULL;

 assert(object != kernel_object);





 vm_object_paging_begin(object);
 if (object->pager_created) {




  while (!object->pager_initialized) {
   vm_object_sleep(object,
            VM_OBJECT_EVENT_INITIALIZED,
            THREAD_UNINT);
  }
  vm_object_paging_end(object);
  return;
 }

 if ((uint32_t) (object->vo_size/PAGE_SIZE) !=
     (object->vo_size/PAGE_SIZE)) {







  vm_object_paging_end(object);
  return;
 }






 object->pager_created = TRUE;
 object->paging_offset = 0;

 vm_object_unlock(object);
 {

  assert((uint32_t) (object->vo_size/PAGE_SIZE) ==
         (object->vo_size/PAGE_SIZE));
  (void) compressor_memory_object_create(
   (memory_object_size_t) object->vo_size,
   &pager);
  if (pager == ((void*)0)) {
   panic("vm_object_compressor_pager_create(): "
         "no pager for object %p size 0x%llx\n",
         object, (uint64_t) object->vo_size);
  }
       }







 pager_object = vm_object_memory_object_associate(pager,
        object,
        object->vo_size,
        FALSE);
 if (pager_object != object) {
  panic("vm_object_compressor_pager_create: mismatch (pager: %p, pager_object: %p, orig_object: %p, orig_object size: 0x%llx)\n", pager, pager_object, object, (uint64_t) object->vo_size);
 }




 memory_object_deallocate(pager);

 vm_object_lock(object);




 vm_object_paging_end(object);
}
