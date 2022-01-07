
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int kern_return_t ;
typedef TYPE_2__* coalition_t ;
typedef int boolean_t ;
struct TYPE_4__ {int other; int services; int extensions; int leader; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ j; } ;


 scalar_t__ COALITION_TYPE_JETSAM ;
 int KERN_SUCCESS ;
 int TASK_NULL ;
 int assert (int ) ;
 int queue_head_init (int ) ;

__attribute__((used)) static kern_return_t
i_coal_jetsam_init(coalition_t coal, boolean_t privileged)
{
 assert(coal && coal->type == COALITION_TYPE_JETSAM);
 (void)privileged;

 coal->j.leader= TASK_NULL;
 queue_head_init(coal->j.extensions);
 queue_head_init(coal->j.services);
 queue_head_init(coal->j.other);

 return KERN_SUCCESS;
}
