
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ task_t ;
typedef TYPE_2__* coalition_t ;
struct TYPE_6__ {scalar_t__ leader; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_1__ j; } ;


 scalar_t__ COALITION_TYPE_JETSAM ;
 scalar_t__ TASK_NULL ;
 int coalition_lock (TYPE_2__*) ;
 int coalition_unlock (TYPE_2__*) ;
 int task_reference (scalar_t__) ;

task_t coalition_get_leader(coalition_t coal)
{
 task_t leader = TASK_NULL;

 if (!coal)
  return TASK_NULL;

 coalition_lock(coal);
 if (coal->type != COALITION_TYPE_JETSAM)
  goto out_unlock;

 leader = coal->j.leader;
 if (leader != TASK_NULL)
  task_reference(leader);

out_unlock:
 coalition_unlock(coal);
 return leader;
}
