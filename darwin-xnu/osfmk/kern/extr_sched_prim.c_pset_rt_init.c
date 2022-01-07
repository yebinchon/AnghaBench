
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* processor_set_t ;
struct TYPE_5__ {int runq_stats; int queue; scalar_t__ count; } ;
struct TYPE_6__ {TYPE_1__ rt_runq; } ;


 int memset (int *,int ,int) ;
 int queue_init (int *) ;
 int rt_lock_init (TYPE_2__*) ;

void
pset_rt_init(processor_set_t pset)
{
 rt_lock_init(pset);

 pset->rt_runq.count = 0;
 queue_init(&pset->rt_runq.queue);
 memset(&pset->rt_runq.runq_stats, 0, sizeof pset->rt_runq.runq_stats);
}
