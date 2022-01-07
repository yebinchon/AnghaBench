
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* task_t ;
typedef int kern_return_t ;
typedef TYPE_3__* coalition_t ;
struct TYPE_7__ {TYPE_2__* leader; } ;
struct TYPE_9__ {size_t type; TYPE_1__ j; int id; } ;
struct TYPE_8__ {int * task_coalition; TYPE_3__** coalition; } ;


 size_t COALITION_TYPE_JETSAM ;
 size_t COALITION_TYPE_RESOURCE ;
 int KERN_SUCCESS ;
 int assert (int) ;
 int coal_dbg (char*,int ,...) ;
 int queue_chain_init (int ) ;
 int queue_empty (int *) ;
 int remqueue (int *) ;
 int task_pid (TYPE_2__*) ;

__attribute__((used)) static kern_return_t
i_coal_jetsam_remove_task(coalition_t coal, task_t task)
{
 assert(coal && coal->type == COALITION_TYPE_JETSAM);
 assert(task->coalition[COALITION_TYPE_JETSAM] == coal);

 coal_dbg("removing PID:%d from coalition id:%lld",
   task_pid(task), coal->id);

 if (task == coal->j.leader) {
  coal->j.leader = ((void*)0);
  coal_dbg("    PID:%d was the leader!", task_pid(task));
 } else {
  assert(!queue_empty(&task->task_coalition[COALITION_TYPE_JETSAM]));
 }


 remqueue(&task->task_coalition[COALITION_TYPE_JETSAM]);
 queue_chain_init(task->task_coalition[COALITION_TYPE_RESOURCE]);

 return KERN_SUCCESS;
}
