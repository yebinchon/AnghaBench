
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_object_t ;
typedef scalar_t__ vm_object_size_t ;
typedef int vm_object_offset_t ;
typedef scalar_t__ boolean_t ;


 int MEMORY_OBJECT_DATA_FLUSH ;
 int MEMORY_OBJECT_DATA_NO_CHANGE ;
 int MEMORY_OBJECT_IO_SYNC ;
 int MEMORY_OBJECT_RETURN_ALL ;
 int MEMORY_OBJECT_RETURN_NONE ;
 int VM_PROT_NO_CHANGE ;
 int XPR (int ,char*,int ,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int XPR_VM_OBJECT ;
 int vm_object_lock (int ) ;
 int vm_object_paging_begin (int ) ;
 int vm_object_paging_end (int ) ;
 int vm_object_unlock (int ) ;
 scalar_t__ vm_object_update (int ,int ,scalar_t__,int *,int *,int ,int,int ) ;

boolean_t
vm_object_sync(
 vm_object_t object,
 vm_object_offset_t offset,
 vm_object_size_t size,
 boolean_t should_flush,
 boolean_t should_return,
 boolean_t should_iosync)
{
 boolean_t rv;
 int flags;

        XPR(XPR_VM_OBJECT,
            "vm_o_sync, object 0x%X, offset 0x%X size 0x%x flush %d rtn %d\n",
            object, offset, size, should_flush, should_return);






 vm_object_lock(object);
 vm_object_paging_begin(object);

 if (should_flush) {
         flags = MEMORY_OBJECT_DATA_FLUSH;







  flags |= MEMORY_OBJECT_DATA_NO_CHANGE;
 } else
         flags = 0;

 if (should_iosync)
         flags |= MEMORY_OBJECT_IO_SYNC;

 rv = vm_object_update(object, offset, (vm_object_size_t)size, ((void*)0), ((void*)0),
  (should_return) ?
   MEMORY_OBJECT_RETURN_ALL :
   MEMORY_OBJECT_RETURN_NONE,
  flags,
  VM_PROT_NO_CHANGE);


 vm_object_paging_end(object);
 vm_object_unlock(object);
 return rv;
}
