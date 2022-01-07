
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * columnList; } ;
typedef TYPE_1__ MultiProject ;
typedef int MultiNode ;
typedef int List ;


 int Assert (int) ;
 int * FindNodesOfType (int *,int ) ;
 int * NIL ;
 int T_MultiProject ;
 int * TargetEntryList (int *) ;
 scalar_t__ linitial (int *) ;
 scalar_t__ list_length (int *) ;

__attribute__((used)) static List *
QueryTargetList(MultiNode *multiNode)
{
 MultiProject *topProjectNode = ((void*)0);
 List *columnList = NIL;
 List *queryTargetList = NIL;

 List *projectNodeList = FindNodesOfType(multiNode, T_MultiProject);
 Assert(list_length(projectNodeList) > 0);

 topProjectNode = (MultiProject *) linitial(projectNodeList);
 columnList = topProjectNode->columnList;
 queryTargetList = TargetEntryList(columnList);

 Assert(queryTargetList != NIL);
 return queryTargetList;
}
