
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* os_reason_t ;
struct TYPE_6__ {scalar_t__ osr_refcount; int osr_lock; } ;


 TYPE_1__* OS_REASON_NULL ;
 int lck_mtx_destroy (int *,int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int os_reason_dealloc_buffer (TYPE_1__*) ;
 int os_reason_lock_grp ;
 int os_reason_zone ;
 int panic (char*) ;
 int zfree (int ,TYPE_1__*) ;

void
os_reason_free(os_reason_t cur_reason)
{
 if (cur_reason == OS_REASON_NULL) {
  return;
 }

 lck_mtx_lock(&cur_reason->osr_lock);

 if (cur_reason->osr_refcount == 0) {
  panic("os_reason_free called on reason with zero refcount");
 }

 cur_reason->osr_refcount--;
 if (cur_reason->osr_refcount != 0) {
  lck_mtx_unlock(&cur_reason->osr_lock);
  return;
 }

 os_reason_dealloc_buffer(cur_reason);

 lck_mtx_unlock(&cur_reason->osr_lock);
 lck_mtx_destroy(&cur_reason->osr_lock, os_reason_lock_grp);

 zfree(os_reason_zone, cur_reason);
}
