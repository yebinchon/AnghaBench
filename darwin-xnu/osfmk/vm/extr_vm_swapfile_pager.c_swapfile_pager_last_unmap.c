
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* swapfile_pager_t ;
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
 int swapfile_pager_deallocate_internal (TYPE_1__*,int ) ;
 int swapfile_pager_lock ;
 TYPE_1__* swapfile_pager_lookup (int ) ;

kern_return_t
swapfile_pager_last_unmap(
 memory_object_t mem_obj)
{
 swapfile_pager_t pager;

 PAGER_DEBUG(PAGER_ALL,
      ("swapfile_pager_last_unmap: %p\n", mem_obj));

 pager = swapfile_pager_lookup(mem_obj);

 lck_mtx_lock(&swapfile_pager_lock);
 if (pager->is_mapped) {




  pager->is_mapped = FALSE;
  swapfile_pager_deallocate_internal(pager, TRUE);

 } else {
  lck_mtx_unlock(&swapfile_pager_lock);
 }

 return KERN_SUCCESS;
}
