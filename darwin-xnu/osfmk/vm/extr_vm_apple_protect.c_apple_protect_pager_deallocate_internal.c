
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ boolean_t ;
typedef TYPE_2__* apple_protect_pager_t ;
struct TYPE_8__ {scalar_t__ mo_control; } ;
struct TYPE_9__ {int ref_count; TYPE_1__ ap_pgr_hdr; } ;


 TYPE_2__* APPLE_PROTECT_PAGER_NULL ;
 scalar_t__ FALSE ;
 scalar_t__ MEMORY_OBJECT_CONTROL_NULL ;
 scalar_t__ TRUE ;
 int apple_protect_pager_cache_limit ;
 int apple_protect_pager_count ;
 int apple_protect_pager_count_mapped ;
 int apple_protect_pager_dequeue (TYPE_2__*) ;
 int apple_protect_pager_lock ;
 int apple_protect_pager_terminate_internal (TYPE_2__*) ;
 int apple_protect_pager_trim () ;
 int kfree (TYPE_2__*,int) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int memory_object_control_deallocate (scalar_t__) ;

void
apple_protect_pager_deallocate_internal(
 apple_protect_pager_t pager,
 boolean_t locked)
{
 boolean_t needs_trimming;
 int count_unmapped;

 if (! locked) {
  lck_mtx_lock(&apple_protect_pager_lock);
 }

 count_unmapped = (apple_protect_pager_count -
     apple_protect_pager_count_mapped);
 if (count_unmapped > apple_protect_pager_cache_limit) {

  needs_trimming = TRUE;
 } else {
  needs_trimming = FALSE;
 }


 pager->ref_count--;

 if (pager->ref_count == 1) {





  apple_protect_pager_dequeue(pager);

  lck_mtx_unlock(&apple_protect_pager_lock);
  apple_protect_pager_terminate_internal(pager);
 } else if (pager->ref_count == 0) {





  lck_mtx_unlock(&apple_protect_pager_lock);
  if (pager->ap_pgr_hdr.mo_control != MEMORY_OBJECT_CONTROL_NULL) {
   memory_object_control_deallocate(pager->ap_pgr_hdr.mo_control);
   pager->ap_pgr_hdr.mo_control = MEMORY_OBJECT_CONTROL_NULL;
  }
  kfree(pager, sizeof (*pager));
  pager = APPLE_PROTECT_PAGER_NULL;
 } else {

  lck_mtx_unlock(&apple_protect_pager_lock);
 }

 if (needs_trimming) {
  apple_protect_pager_trim();
 }

}
