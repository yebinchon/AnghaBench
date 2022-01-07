
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int visited; void* backAdjacencyList; void* adjacencyList; } ;
typedef int Oid ;
typedef int HTAB ;
typedef TYPE_1__ ForeignConstraintRelationshipNode ;


 int HASH_ENTER ;
 void* NIL ;
 scalar_t__ hash_search (int *,int *,int ,int*) ;

__attribute__((used)) static ForeignConstraintRelationshipNode *
CreateOrFindNode(HTAB *adjacencyLists, Oid relid)
{
 bool found = 0;
 ForeignConstraintRelationshipNode *node =
  (ForeignConstraintRelationshipNode *) hash_search(adjacencyLists,
                &relid, HASH_ENTER,
                &found);

 if (!found)
 {
  node->adjacencyList = NIL;
  node->backAdjacencyList = NIL;
  node->visited = 0;
 }

 return node;
}
