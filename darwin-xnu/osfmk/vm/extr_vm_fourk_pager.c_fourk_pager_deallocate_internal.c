
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* fourk_pager_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_8__ {scalar_t__ mo_control; } ;
struct TYPE_9__ {int ref_count; TYPE_1__ fourk_pgr_hdr; } ;


 scalar_t__ FALSE ;
 TYPE_2__* FOURK_PAGER_NULL ;
 scalar_t__ MEMORY_OBJECT_CONTROL_NULL ;
 scalar_t__ TRUE ;
 int fourk_pager_cache_limit ;
 int fourk_pager_count ;
 int fourk_pager_count_mapped ;
 int fourk_pager_dequeue (TYPE_2__*) ;
 int fourk_pager_lock ;
 int fourk_pager_terminate_internal (TYPE_2__*) ;
 int fourk_pager_trim () ;
 int kfree (TYPE_2__*,int) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int memory_object_control_deallocate (scalar_t__) ;

void
fourk_pager_deallocate_internal(
 fourk_pager_t pager,
 boolean_t locked)
{
 boolean_t needs_trimming;
 int count_unmapped;

 if (! locked) {
  lck_mtx_lock(&fourk_pager_lock);
 }

 count_unmapped = (fourk_pager_count -
     fourk_pager_count_mapped);
 if (count_unmapped > fourk_pager_cache_limit) {

  needs_trimming = TRUE;
 } else {
  needs_trimming = FALSE;
 }


 pager->ref_count--;

 if (pager->ref_count == 1) {





  fourk_pager_dequeue(pager);

  lck_mtx_unlock(&fourk_pager_lock);
  fourk_pager_terminate_internal(pager);
 } else if (pager->ref_count == 0) {





  lck_mtx_unlock(&fourk_pager_lock);
  if (pager->fourk_pgr_hdr.mo_control != MEMORY_OBJECT_CONTROL_NULL) {
   memory_object_control_deallocate(pager->fourk_pgr_hdr.mo_control);
   pager->fourk_pgr_hdr.mo_control = MEMORY_OBJECT_CONTROL_NULL;
  }
  kfree(pager, sizeof (*pager));
  pager = FOURK_PAGER_NULL;
 } else {

  lck_mtx_unlock(&fourk_pager_lock);
 }

 if (needs_trimming) {
  fourk_pager_trim();
 }

}
