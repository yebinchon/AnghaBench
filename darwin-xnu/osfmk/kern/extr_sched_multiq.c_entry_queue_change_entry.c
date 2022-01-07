
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* sched_entry_t ;
typedef int * queue_t ;
typedef int integer_t ;
typedef TYPE_2__* entry_queue_t ;
struct TYPE_8__ {int * queues; } ;
struct TYPE_7__ {int sched_pri; int entry_links; } ;


 int SCHED_TAILQ ;
 int entry_queue_check_entry (TYPE_2__*,TYPE_1__*,int) ;
 scalar_t__ multiq_sanity_check ;
 int re_queue_head (int *,int *) ;
 int re_queue_tail (int *,int *) ;

__attribute__((used)) static void
entry_queue_change_entry(
                          entry_queue_t rq,
                          sched_entry_t entry,
                          integer_t options)
{
 int sched_pri = entry->sched_pri;
 queue_t queue = &rq->queues[sched_pri];







 if (options & SCHED_TAILQ)
  re_queue_tail(queue, &entry->entry_links);
 else
  re_queue_head(queue, &entry->entry_links);
}
