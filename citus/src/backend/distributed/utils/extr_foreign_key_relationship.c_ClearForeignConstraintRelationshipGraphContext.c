
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nodeMap; } ;


 TYPE_1__* fConstraintRelationshipGraph ;
 int hash_destroy (int ) ;

void
ClearForeignConstraintRelationshipGraphContext()
{
 if (fConstraintRelationshipGraph == ((void*)0))
 {
  return;
 }

 hash_destroy(fConstraintRelationshipGraph->nodeMap);
 fConstraintRelationshipGraph = ((void*)0);
}
