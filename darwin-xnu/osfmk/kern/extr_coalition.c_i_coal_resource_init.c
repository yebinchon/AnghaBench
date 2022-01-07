
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int kern_return_t ;
typedef TYPE_2__* coalition_t ;
typedef int boolean_t ;
struct TYPE_4__ {int tasks; int * ledger; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ r; } ;


 scalar_t__ COALITION_TYPE_RESOURCE ;
 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 int LEDGER_CREATE_ACTIVE_ENTRIES ;
 int assert (int ) ;
 int * ledger_instantiate (int ,int ) ;
 int queue_init (int *) ;
 int task_ledger_template ;

__attribute__((used)) static kern_return_t
i_coal_resource_init(coalition_t coal, boolean_t privileged)
{
 (void)privileged;
 assert(coal && coal->type == COALITION_TYPE_RESOURCE);
 coal->r.ledger = ledger_instantiate(task_ledger_template,
         LEDGER_CREATE_ACTIVE_ENTRIES);
 if (coal->r.ledger == ((void*)0))
  return KERN_RESOURCE_SHORTAGE;

 queue_init(&coal->r.tasks);

 return KERN_SUCCESS;
}
