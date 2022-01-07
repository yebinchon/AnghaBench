
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef TYPE_1__* vm_object_t ;
typedef int memory_object_size_t ;
typedef int memory_object_return_t ;
typedef int memory_object_offset_t ;
typedef int memory_object_control_t ;
typedef int kern_return_t ;
struct TYPE_10__ {scalar_t__ paging_offset; scalar_t__ copy; } ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int MEMORY_OBJECT_DATA_FLUSH ;
 int MEMORY_OBJECT_DATA_FLUSH_ALL ;
 int MEMORY_OBJECT_RETURN_NONE ;
 int REAP_DATA_FLUSH ;
 TYPE_1__* VM_OBJECT_NULL ;
 int VM_PROT_ALL ;
 int VM_PROT_NO_CHANGE ;
 TYPE_1__* memory_object_control_to_vm_object (int ) ;
 int round_page_64 (int ) ;
 int vm_object_lock (TYPE_1__*) ;
 int vm_object_paging_begin (TYPE_1__*) ;
 int vm_object_paging_end (TYPE_1__*) ;
 int vm_object_reap_pages (TYPE_1__*,int ) ;
 int vm_object_unlock (TYPE_1__*) ;
 int vm_object_update (TYPE_1__*,int ,int ,int *,int*,int ,int,int) ;

kern_return_t
memory_object_lock_request(
 memory_object_control_t control,
 memory_object_offset_t offset,
 memory_object_size_t size,
 memory_object_offset_t * resid_offset,
 int * io_errno,
 memory_object_return_t should_return,
 int flags,
 vm_prot_t prot)
{
 vm_object_t object;




 object = memory_object_control_to_vm_object(control);
 if (object == VM_OBJECT_NULL)
  return (KERN_INVALID_ARGUMENT);

 if ((prot & ~VM_PROT_ALL) != 0 && prot != VM_PROT_NO_CHANGE)
  return (KERN_INVALID_ARGUMENT);

 size = round_page_64(size);





 vm_object_lock(object);
 vm_object_paging_begin(object);

 if (flags & MEMORY_OBJECT_DATA_FLUSH_ALL) {
  if ((should_return != MEMORY_OBJECT_RETURN_NONE) || offset || object->copy) {
   flags &= ~MEMORY_OBJECT_DATA_FLUSH_ALL;
   flags |= MEMORY_OBJECT_DATA_FLUSH;
  }
 }
 offset -= object->paging_offset;

 if (flags & MEMORY_OBJECT_DATA_FLUSH_ALL)
  vm_object_reap_pages(object, REAP_DATA_FLUSH);
 else
  (void)vm_object_update(object, offset, size, resid_offset,
           io_errno, should_return, flags, prot);

 vm_object_paging_end(object);
 vm_object_unlock(object);

 return (KERN_SUCCESS);
}
