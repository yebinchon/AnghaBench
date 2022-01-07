
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* shared_region_pager_t ;
struct TYPE_4__ {int mo_control; } ;
struct TYPE_5__ {int is_ready; scalar_t__ backing_object; TYPE_1__ sc_pgr_hdr; int is_mapped; } ;


 scalar_t__ VM_OBJECT_NULL ;
 int assert (int) ;
 int memory_object_destroy (int ,int ) ;
 int vm_object_deallocate (scalar_t__) ;

void
shared_region_pager_terminate_internal(
 shared_region_pager_t pager)
{
 assert(pager->is_ready);
 assert(!pager->is_mapped);

 if (pager->backing_object != VM_OBJECT_NULL) {
  vm_object_deallocate(pager->backing_object);
  pager->backing_object = VM_OBJECT_NULL;
 }

 memory_object_destroy(pager->sc_pgr_hdr.mo_control, 0);
}
