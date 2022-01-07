
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* swapfile_pager_t ;
typedef int boolean_t ;
struct TYPE_8__ {scalar_t__ mo_control; } ;
struct TYPE_9__ {int ref_count; TYPE_1__ swp_pgr_hdr; } ;


 scalar_t__ MEMORY_OBJECT_CONTROL_NULL ;
 TYPE_2__* SWAPFILE_PAGER_NULL ;
 int kfree (TYPE_2__*,int) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int memory_object_control_deallocate (scalar_t__) ;
 int swapfile_pager_dequeue (TYPE_2__*) ;
 int swapfile_pager_lock ;
 int swapfile_pager_terminate_internal (TYPE_2__*) ;

void
swapfile_pager_deallocate_internal(
 swapfile_pager_t pager,
 boolean_t locked)
{
 if (! locked) {
  lck_mtx_lock(&swapfile_pager_lock);
 }


 pager->ref_count--;

 if (pager->ref_count == 1) {





  swapfile_pager_dequeue(pager);

  lck_mtx_unlock(&swapfile_pager_lock);
  swapfile_pager_terminate_internal(pager);
 } else if (pager->ref_count == 0) {





  lck_mtx_unlock(&swapfile_pager_lock);
  if (pager->swp_pgr_hdr.mo_control != MEMORY_OBJECT_CONTROL_NULL) {
   memory_object_control_deallocate(pager->swp_pgr_hdr.mo_control);
   pager->swp_pgr_hdr.mo_control = MEMORY_OBJECT_CONTROL_NULL;
  }
  kfree(pager, sizeof (*pager));
  pager = SWAPFILE_PAGER_NULL;
 } else {

  lck_mtx_unlock(&swapfile_pager_lock);
 }


}
