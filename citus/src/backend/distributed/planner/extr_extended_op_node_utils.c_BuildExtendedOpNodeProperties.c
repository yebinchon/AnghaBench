
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int groupedByDisjointPartitionColumn; int repartitionSubquery; int hasNonPartitionColumnDistinctAgg; int pullDistinctColumns; int pushDownWindowFunctions; } ;
struct TYPE_7__ {int hasWindowFuncs; int * havingQual; int * targetList; } ;
typedef int Node ;
typedef int MultiNode ;
typedef TYPE_1__ MultiExtendedOp ;
typedef int List ;
typedef TYPE_2__ ExtendedOpNodeProperties ;


 int ExtendedOpNodeContainsRepartitionSubquery (TYPE_1__*) ;
 int * FindNodesOfType (int *,int ) ;
 int GroupedByDisjointPartitionColumn (int *,TYPE_1__*) ;
 int HasNonPartitionColumnDistinctAgg (int *,int *,int *) ;
 int * NIL ;
 int ShouldPullDistinctColumn (int,int,int) ;
 int T_MultiTable ;

ExtendedOpNodeProperties
BuildExtendedOpNodeProperties(MultiExtendedOp *extendedOpNode)
{
 ExtendedOpNodeProperties extendedOpNodeProperties;
 List *tableNodeList = NIL;
 List *targetList = NIL;
 Node *havingQual = ((void*)0);

 bool groupedByDisjointPartitionColumn = 0;
 bool repartitionSubquery = 0;
 bool hasNonPartitionColumnDistinctAgg = 0;
 bool pullDistinctColumns = 0;
 bool pushDownWindowFunctions = 0;

 tableNodeList = FindNodesOfType((MultiNode *) extendedOpNode, T_MultiTable);
 groupedByDisjointPartitionColumn = GroupedByDisjointPartitionColumn(tableNodeList,
                  extendedOpNode);

 repartitionSubquery = ExtendedOpNodeContainsRepartitionSubquery(extendedOpNode);

 targetList = extendedOpNode->targetList;
 havingQual = extendedOpNode->havingQual;
 hasNonPartitionColumnDistinctAgg =
  HasNonPartitionColumnDistinctAgg(targetList, havingQual, tableNodeList);

 pullDistinctColumns =
  ShouldPullDistinctColumn(repartitionSubquery, groupedByDisjointPartitionColumn,
         hasNonPartitionColumnDistinctAgg);






 pushDownWindowFunctions = extendedOpNode->hasWindowFuncs;

 extendedOpNodeProperties.groupedByDisjointPartitionColumn =
  groupedByDisjointPartitionColumn;
 extendedOpNodeProperties.repartitionSubquery = repartitionSubquery;
 extendedOpNodeProperties.hasNonPartitionColumnDistinctAgg =
  hasNonPartitionColumnDistinctAgg;
 extendedOpNodeProperties.pullDistinctColumns = pullDistinctColumns;
 extendedOpNodeProperties.pushDownWindowFunctions = pushDownWindowFunctions;

 return extendedOpNodeProperties;
}
