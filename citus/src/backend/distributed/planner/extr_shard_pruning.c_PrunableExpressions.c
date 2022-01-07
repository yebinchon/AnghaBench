
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ pendingInstances; int * currentPruningInstance; } ;
struct TYPE_5__ {int * continueAt; int instance; } ;
typedef int PruningInstance ;
typedef TYPE_1__ PendingPruningInstance ;
typedef int Node ;
typedef TYPE_2__ ClauseWalkerContext ;


 int * CopyPartialPruningInstance (int ) ;
 scalar_t__ NIL ;
 int PrunableExpressionsWalker (int *,TYPE_2__*) ;
 scalar_t__ linitial (scalar_t__) ;
 scalar_t__ list_delete_first (scalar_t__) ;

__attribute__((used)) static void
PrunableExpressions(Node *node, ClauseWalkerContext *context)
{
 PrunableExpressionsWalker(node, context);
 while (context->pendingInstances != NIL)
 {
  PendingPruningInstance *instance =
   (PendingPruningInstance *) linitial(context->pendingInstances);
  PruningInstance *newPrune = CopyPartialPruningInstance(instance->instance);

  context->pendingInstances = list_delete_first(context->pendingInstances);

  context->currentPruningInstance = newPrune;
  PrunableExpressionsWalker(instance->continueAt, context);
  context->currentPruningInstance = ((void*)0);
 }
}
