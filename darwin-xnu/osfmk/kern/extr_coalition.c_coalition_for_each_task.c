
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* coalition_t ;
struct TYPE_11__ {int active_count; int type; int id; } ;


 TYPE_1__* COALITION_NULL ;
 int assert (int) ;
 int coal_call (TYPE_1__*,int ,void*,void (*) (TYPE_1__*,void*,task_t)) ;
 int coal_dbg (char*,TYPE_1__*,int ,int ,int ) ;
 int coal_type_str (int ) ;
 int coalition_lock (TYPE_1__*) ;
 int coalition_unlock (TYPE_1__*) ;
 int iterate_tasks ;

void coalition_for_each_task(coalition_t coal, void *ctx,
        void (*callback)(coalition_t, void *, task_t))
{
 assert(coal != COALITION_NULL);

 coal_dbg("iterating tasks in coalition %p id:%llu type:%s, active_count:%u",
   coal, coal->id, coal_type_str(coal->type), coal->active_count);

 coalition_lock(coal);

 coal_call(coal, iterate_tasks, ctx, callback);

 coalition_unlock(coal);
}
