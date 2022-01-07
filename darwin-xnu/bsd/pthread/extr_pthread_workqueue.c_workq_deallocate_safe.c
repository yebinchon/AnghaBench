
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue {int wq_refcnt; } ;


 scalar_t__ __improbable (int) ;
 scalar_t__ os_ref_release_relaxed (int *) ;
 int workq_deallocate_enqueue (struct workqueue*) ;

void
workq_deallocate_safe(struct workqueue *wq)
{
 if (__improbable(os_ref_release_relaxed(&wq->wq_refcnt) == 0)) {
  workq_deallocate_enqueue(wq);
 }
}
