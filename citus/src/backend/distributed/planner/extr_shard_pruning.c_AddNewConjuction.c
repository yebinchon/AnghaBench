
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int pendingInstances; TYPE_1__* currentPruningInstance; } ;
struct TYPE_8__ {TYPE_1__* instance; int * continueAt; } ;
struct TYPE_7__ {int isPartial; } ;
typedef TYPE_2__ PendingPruningInstance ;
typedef int OpExpr ;
typedef int Node ;
typedef TYPE_3__ ClauseWalkerContext ;


 int lappend (int ,TYPE_2__*) ;
 TYPE_2__* palloc0 (int) ;

__attribute__((used)) static void
AddNewConjuction(ClauseWalkerContext *context, OpExpr *op)
{
 PendingPruningInstance *instance = palloc0(sizeof(PendingPruningInstance));

 instance->instance = context->currentPruningInstance;
 instance->continueAt = (Node *) op;






 instance->instance->isPartial = 1;
 context->pendingInstances = lappend(context->pendingInstances, instance);
}
