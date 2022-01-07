
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int memory_object_t ;
typedef int kern_return_t ;
typedef TYPE_1__* fourk_pager_t ;
struct TYPE_4__ {scalar_t__ is_mapped; } ;


 scalar_t__ FALSE ;
 int KERN_SUCCESS ;
 int PAGER_ALL ;
 int PAGER_DEBUG (int ,char*) ;
 int TRUE ;
 int fourk_pager_count ;
 int fourk_pager_count_mapped ;
 int fourk_pager_count_unmapped_max ;
 int fourk_pager_deallocate_internal (TYPE_1__*,int ) ;
 int fourk_pager_lock ;
 TYPE_1__* fourk_pager_lookup (int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;

kern_return_t
fourk_pager_last_unmap(
 memory_object_t mem_obj)
{
 fourk_pager_t pager;
 int count_unmapped;

 PAGER_DEBUG(PAGER_ALL,
      ("fourk_pager_last_unmap: %p\n", mem_obj));

 pager = fourk_pager_lookup(mem_obj);

 lck_mtx_lock(&fourk_pager_lock);
 if (pager->is_mapped) {




  fourk_pager_count_mapped--;
  count_unmapped = (fourk_pager_count -
      fourk_pager_count_mapped);
  if (count_unmapped > fourk_pager_count_unmapped_max) {
   fourk_pager_count_unmapped_max = count_unmapped;
  }
  pager->is_mapped = FALSE;
  fourk_pager_deallocate_internal(pager, TRUE);

 } else {
  lck_mtx_unlock(&fourk_pager_lock);
 }

 return KERN_SUCCESS;
}
