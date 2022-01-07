
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
struct i_jetsam_coalition {int other; } ;
typedef int kern_return_t ;
typedef TYPE_2__* coalition_t ;
struct TYPE_7__ {size_t type; int id; struct i_jetsam_coalition j; } ;
struct TYPE_6__ {int * task_coalition; } ;


 size_t COALITION_TYPE_JETSAM ;
 int KERN_SUCCESS ;
 int assert (int ) ;
 int coal_dbg (char*,int ,int ) ;
 int enqueue_tail (int *,int *) ;
 int queue_empty (int *) ;
 int task_pid (TYPE_1__*) ;

__attribute__((used)) static kern_return_t
i_coal_jetsam_adopt_task(coalition_t coal, task_t task)
{
 struct i_jetsam_coalition *cj;
 assert(coal && coal->type == COALITION_TYPE_JETSAM);

 cj = &coal->j;

 assert(queue_empty(&task->task_coalition[COALITION_TYPE_JETSAM]));


 enqueue_tail(&cj->other, &task->task_coalition[COALITION_TYPE_JETSAM]);
 coal_dbg("coalition %lld adopted PID:%d as UNDEF",
   coal->id, task_pid(task));

 return KERN_SUCCESS;
}
