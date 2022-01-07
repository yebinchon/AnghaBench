
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nodeMap; } ;
struct TYPE_5__ {void* backAdjacencyList; void* adjacencyList; } ;
typedef int Oid ;
typedef TYPE_1__ ForeignConstraintRelationshipNode ;


 TYPE_1__* CreateOrFindNode (int ,int ) ;
 TYPE_3__* fConstraintRelationshipGraph ;
 void* lappend (void*,TYPE_1__*) ;

__attribute__((used)) static void
AddForeignConstraintRelationshipEdge(Oid referencingOid, Oid referencedOid)
{
 ForeignConstraintRelationshipNode *referencingNode = CreateOrFindNode(
  fConstraintRelationshipGraph->nodeMap, referencingOid);
 ForeignConstraintRelationshipNode *referencedNode = CreateOrFindNode(
  fConstraintRelationshipGraph->nodeMap, referencedOid);

 referencingNode->adjacencyList = lappend(referencingNode->adjacencyList,
            referencedNode);
 referencedNode->backAdjacencyList = lappend(referencedNode->backAdjacencyList,
            referencingNode);
}
