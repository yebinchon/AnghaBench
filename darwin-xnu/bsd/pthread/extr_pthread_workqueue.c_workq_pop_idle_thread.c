
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue {int wq_thidlecount; int wq_threads_scheduled; int wq_thrunlist; int wq_thnewlist; int wq_thidlelist; } ;
struct uthread {int uu_workq_flags; } ;


 struct uthread* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct uthread*,int ) ;
 int TAILQ_REMOVE (int *,struct uthread*,int ) ;
 int UT_WORKQ_DYING ;
 int UT_WORKQ_OVERCOMMIT ;
 int UT_WORKQ_RUNNING ;
 scalar_t__ __improbable (int) ;
 int assert (int) ;
 int uu_workq_entry ;
 int workq_death_policy_evaluate (struct workqueue*,int) ;

__attribute__((used)) static struct uthread *
workq_pop_idle_thread(struct workqueue *wq)
{
 struct uthread *uth;

 if ((uth = TAILQ_FIRST(&wq->wq_thidlelist))) {
  TAILQ_REMOVE(&wq->wq_thidlelist, uth, uu_workq_entry);
 } else {
  uth = TAILQ_FIRST(&wq->wq_thnewlist);
  TAILQ_REMOVE(&wq->wq_thnewlist, uth, uu_workq_entry);
 }
 TAILQ_INSERT_TAIL(&wq->wq_thrunlist, uth, uu_workq_entry);

 assert((uth->uu_workq_flags & UT_WORKQ_RUNNING) == 0);
 uth->uu_workq_flags |= UT_WORKQ_RUNNING | UT_WORKQ_OVERCOMMIT;
 wq->wq_threads_scheduled++;
 wq->wq_thidlecount--;

 if (__improbable(uth->uu_workq_flags & UT_WORKQ_DYING)) {
  uth->uu_workq_flags ^= UT_WORKQ_DYING;
  workq_death_policy_evaluate(wq, 1);
 }
 return uth;
}
