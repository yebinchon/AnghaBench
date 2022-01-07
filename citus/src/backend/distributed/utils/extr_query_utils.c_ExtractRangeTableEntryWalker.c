
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int walkerMode; int ** rangeTableList; } ;
typedef int Node ;
typedef int List ;
typedef TYPE_1__ ExtractRangeTableWalkerContext ;


 int EXTRACT_ALL_ENTRIES ;
 int ExtractRangeTableList (int *,TYPE_1__*) ;

bool
ExtractRangeTableEntryWalker(Node *node, List **rangeTableList)
{
 ExtractRangeTableWalkerContext context;

 context.rangeTableList = rangeTableList;
 context.walkerMode = EXTRACT_ALL_ENTRIES;

 return ExtractRangeTableList(node, &context);
}
