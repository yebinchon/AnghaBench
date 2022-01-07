
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* shared_region_pager_t ;
typedef int memory_object_t ;
typedef int kern_return_t ;
struct TYPE_4__ {scalar_t__ is_mapped; } ;


 scalar_t__ FALSE ;
 int KERN_SUCCESS ;
 int PAGER_ALL ;
 int PAGER_DEBUG (int ,char*) ;
 int TRUE ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int shared_region_pager_count ;
 int shared_region_pager_count_mapped ;
 int shared_region_pager_count_unmapped_max ;
 int shared_region_pager_deallocate_internal (TYPE_1__*,int ) ;
 int shared_region_pager_lock ;
 TYPE_1__* shared_region_pager_lookup (int ) ;

kern_return_t
shared_region_pager_last_unmap(
 memory_object_t mem_obj)
{
 shared_region_pager_t pager;
 int count_unmapped;

 PAGER_DEBUG(PAGER_ALL,
      ("shared_region_pager_last_unmap: %p\n", mem_obj));

 pager = shared_region_pager_lookup(mem_obj);

 lck_mtx_lock(&shared_region_pager_lock);
 if (pager->is_mapped) {




  shared_region_pager_count_mapped--;
  count_unmapped = (shared_region_pager_count -
      shared_region_pager_count_mapped);
  if (count_unmapped > shared_region_pager_count_unmapped_max) {
   shared_region_pager_count_unmapped_max = count_unmapped;
  }
  pager->is_mapped = FALSE;
  shared_region_pager_deallocate_internal(pager, TRUE);

 } else {
  lck_mtx_unlock(&shared_region_pager_lock);
 }

 return KERN_SUCCESS;
}
