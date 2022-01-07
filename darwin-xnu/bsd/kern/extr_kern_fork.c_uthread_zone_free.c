
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* uthread_t ;
struct doc_tombstone {int dummy; } ;
struct TYPE_2__ {int uu_rethrottle_lock; int * t_tombstone; } ;


 int kfree (int *,int) ;
 int lck_spin_destroy (int *,int ) ;
 int rethrottle_lock_grp ;
 int uthread_cleanup_name (void*) ;
 int uthread_zone ;
 int zfree (int ,void*) ;

void
uthread_zone_free(void *uthread)
{
 uthread_t uth = (uthread_t)uthread;

 if (uth->t_tombstone) {
  kfree(uth->t_tombstone, sizeof(struct doc_tombstone));
  uth->t_tombstone = ((void*)0);
 }

 lck_spin_destroy(&uth->uu_rethrottle_lock, rethrottle_lock_grp);

 uthread_cleanup_name(uthread);

 zfree(uthread_zone, uthread);
}
