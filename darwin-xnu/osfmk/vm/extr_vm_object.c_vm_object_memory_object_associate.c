
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
typedef int vm_object_size_t ;
typedef int * memory_object_t ;
typedef int * memory_object_control_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_10__ {int internal; int pager_created; void* pager_initialized; void* pager_ready; void* named; int * pager_control; int * pager; int copy_strategy; void* pager_trusted; } ;


 void* FALSE ;
 int * MEMORY_OBJECT_CONTROL_NULL ;
 int MEMORY_OBJECT_COPY_INVALID ;
 int * MEMORY_OBJECT_NULL ;
 int PAGE_SIZE ;
 void* TRUE ;
 int VM_OBJECT_EVENT_INITIALIZED ;
 int VM_OBJECT_EVENT_PAGER_READY ;
 TYPE_1__* VM_OBJECT_NULL ;
 int assert (int) ;
 int * memory_object_control_allocate (TYPE_1__*) ;
 int memory_object_init (int *,int *,int ) ;
 int memory_object_reference (int *) ;
 TYPE_1__* vm_object_allocate (int ) ;
 int vm_object_lock (TYPE_1__*) ;
 int vm_object_unlock (TYPE_1__*) ;
 int vm_object_wakeup (TYPE_1__*,int ) ;

vm_object_t
vm_object_memory_object_associate(
 memory_object_t pager,
 vm_object_t object,
 vm_object_size_t size,
 boolean_t named)
{
 memory_object_control_t control;

 assert(pager != MEMORY_OBJECT_NULL);

 if (object != VM_OBJECT_NULL) {
  assert(object->internal);
  assert(object->pager_created);
  assert(!object->pager_initialized);
  assert(!object->pager_ready);
 } else {
  object = vm_object_allocate(size);
  assert(object != VM_OBJECT_NULL);
  object->internal = FALSE;
  object->pager_trusted = FALSE;

  object->copy_strategy = MEMORY_OBJECT_COPY_INVALID;
 }





 control = memory_object_control_allocate(object);
 assert (control != MEMORY_OBJECT_CONTROL_NULL);

 vm_object_lock(object);

 assert(!object->pager_ready);
 assert(!object->pager_initialized);
 assert(object->pager == ((void*)0));
 assert(object->pager_control == ((void*)0));





 memory_object_reference(pager);
 object->pager_created = TRUE;
 object->pager = pager;
 object->pager_control = control;
 object->pager_ready = FALSE;

 vm_object_unlock(object);





 (void) memory_object_init(pager,
      object->pager_control,
      PAGE_SIZE);

 vm_object_lock(object);
 if (named)
  object->named = TRUE;
 if (object->internal) {
  object->pager_ready = TRUE;
  vm_object_wakeup(object, VM_OBJECT_EVENT_PAGER_READY);
 }

 object->pager_initialized = TRUE;
 vm_object_wakeup(object, VM_OBJECT_EVENT_INITIALIZED);

 vm_object_unlock(object);

 return object;
}
