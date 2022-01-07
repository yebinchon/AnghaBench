
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int memory_object_t ;
typedef int kern_return_t ;
typedef TYPE_1__* device_pager_t ;
typedef void* boolean_t ;
struct TYPE_5__ {scalar_t__ ref_count; void* is_mapped; } ;


 void* FALSE ;
 int KERN_SUCCESS ;
 void* TRUE ;
 int assert (int) ;
 int device_pager_deallocate (int ) ;
 int device_pager_lock (TYPE_1__*) ;
 TYPE_1__* device_pager_lookup (int ) ;
 int device_pager_unlock (TYPE_1__*) ;

kern_return_t
device_pager_last_unmap(
 memory_object_t mem_obj)
{
 device_pager_t device_object;
 boolean_t drop_ref;

 device_object = device_pager_lookup(mem_obj);

 device_pager_lock(device_object);
 assert(device_object->ref_count > 0);
 if (device_object->is_mapped) {
  device_object->is_mapped = FALSE;
  drop_ref = TRUE;
 } else {
  drop_ref = FALSE;
 }
 device_pager_unlock(device_object);

 if (drop_ref) {
  device_pager_deallocate(mem_obj);
 }

 return KERN_SUCCESS;
}
