
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_2__* task_t ;
typedef TYPE_3__* coalition_t ;
typedef int boolean_t ;
struct TYPE_9__ {TYPE_2__* leader; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_1__ j; } ;
struct TYPE_10__ {TYPE_3__** coalition; } ;


 TYPE_3__* COALITION_NULL ;
 scalar_t__ COALITION_TYPE_JETSAM ;
 int COALITION_TYPE_MAX ;
 int FALSE ;
 int TRUE ;
 int assert (int) ;
 int coalition_lock (TYPE_3__*) ;
 int coalition_unlock (TYPE_3__*) ;

boolean_t coalition_is_leader(task_t task, int coal_type, coalition_t *coal)
{
 coalition_t c;
 boolean_t ret;

 if (coal)
  *coal = COALITION_NULL;

 if (!task)
  return FALSE;

 if (coal_type > COALITION_TYPE_MAX)
  return FALSE;

 c = task->coalition[coal_type];
 if (!c)
  return FALSE;

 assert((int)c->type == coal_type);

 coalition_lock(c);

 if (coal)
  *coal = c;

 ret = FALSE;
 if (c->type == COALITION_TYPE_JETSAM && c->j.leader == task)
  ret = TRUE;

 coalition_unlock(c);

 return ret;
}
