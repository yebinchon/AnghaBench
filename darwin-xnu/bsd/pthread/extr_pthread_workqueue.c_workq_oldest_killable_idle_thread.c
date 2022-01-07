
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct workqueue {int wq_thidlelist; } ;
struct TYPE_3__ {int has_stack; } ;
struct TYPE_4__ {TYPE_1__ uus_workq_park_data; } ;
struct uthread {TYPE_2__ uu_save; } ;


 struct uthread* TAILQ_LAST (int *,int ) ;
 struct uthread* TAILQ_PREV (struct uthread*,int ,int ) ;
 int assert (int ) ;
 int uu_workq_entry ;
 int workq_uthread_head ;

__attribute__((used)) static inline struct uthread *
workq_oldest_killable_idle_thread(struct workqueue *wq)
{
 struct uthread *uth = TAILQ_LAST(&wq->wq_thidlelist, workq_uthread_head);

 if (uth && !uth->uu_save.uus_workq_park_data.has_stack) {
  uth = TAILQ_PREV(uth, workq_uthread_head, uu_workq_entry);
  if (uth) {
   assert(uth->uu_save.uus_workq_park_data.has_stack);
  }
 }
 return uth;
}
