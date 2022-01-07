
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue {int wq_lock; int wq_turnstile; } ;
struct turnstile {int dummy; } ;


 int assert (struct turnstile*) ;
 int lck_spin_destroy (int *,int ) ;
 int turnstile_cleanup () ;
 int turnstile_complete (uintptr_t,int *,struct turnstile**) ;
 int turnstile_deallocate (struct turnstile*) ;
 int workq_lck_grp ;
 int workq_zone_workqueue ;
 int zfree (int ,struct workqueue*) ;

void
workq_destroy(struct workqueue *wq)
{
 struct turnstile *ts;

 turnstile_complete((uintptr_t)wq, &wq->wq_turnstile, &ts);
 assert(ts);
 turnstile_cleanup();
 turnstile_deallocate(ts);

 lck_spin_destroy(&wq->wq_lock, workq_lck_grp);
 zfree(workq_zone_workqueue, wq);
}
