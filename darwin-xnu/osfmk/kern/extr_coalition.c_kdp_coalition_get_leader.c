
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int task_t ;
typedef TYPE_2__* coalition_t ;
struct TYPE_4__ {int leader; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ j; } ;


 scalar_t__ COALITION_TYPE_JETSAM ;
 int TASK_NULL ;

task_t kdp_coalition_get_leader(coalition_t coal)
{
 if (!coal)
  return TASK_NULL;

 if (coal->type == COALITION_TYPE_JETSAM) {
  return coal->j.leader;
 }
 return TASK_NULL;
}
