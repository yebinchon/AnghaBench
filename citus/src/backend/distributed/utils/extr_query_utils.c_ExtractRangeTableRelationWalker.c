
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int walkerMode; int ** rangeTableList; } ;
typedef int Node ;
typedef int List ;
typedef TYPE_1__ ExtractRangeTableWalkerContext ;


 int EXTRACT_RELATION_ENTRIES ;
 int ExtractRangeTableList (int *,TYPE_1__*) ;

bool
ExtractRangeTableRelationWalker(Node *node, List **rangeTableRelationList)
{
 ExtractRangeTableWalkerContext context;

 context.rangeTableList = rangeTableRelationList;
 context.walkerMode = EXTRACT_RELATION_ENTRIES;

 return ExtractRangeTableList(node, &context);
}
