
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int varattno; int varno; int varoattno; int varnoold; } ;
typedef TYPE_1__ Var ;
typedef int RangeTblEntry ;
typedef int List ;
typedef int Index ;
typedef int AttrNumber ;


 scalar_t__ CITUS_RTE_REMOTE_QUERY ;
 scalar_t__ GetRangeTblKind (int *) ;
 int NewColumnId (int ,int ,int *,int *) ;
 int NewTableId (int ,int *) ;
 int * rt_fetch (int ,int *) ;

__attribute__((used)) static void
UpdateColumnAttributes(Var *column, List *rangeTableList, List *dependedJobList)
{
 Index originalTableId = column->varnoold;
 AttrNumber originalColumnId = column->varoattno;


 Index newTableId = NewTableId(originalTableId, rangeTableList);
 AttrNumber newColumnId = originalColumnId;


 RangeTblEntry *newRangeTableEntry = rt_fetch(newTableId, rangeTableList);
 if (GetRangeTblKind(newRangeTableEntry) == CITUS_RTE_REMOTE_QUERY)
 {
  newColumnId = NewColumnId(originalTableId, originalColumnId,
          newRangeTableEntry, dependedJobList);
 }

 column->varno = newTableId;
 column->varattno = newColumnId;
}
