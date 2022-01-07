
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue {int wq_refcnt; } ;


 scalar_t__ os_ref_release_relaxed (int *) ;
 int workq_destroy (struct workqueue*) ;

__attribute__((used)) static void
workq_deallocate(struct workqueue *wq)
{
 if (os_ref_release_relaxed(&wq->wq_refcnt) == 0) {
  workq_destroy(wq);
 }
}
