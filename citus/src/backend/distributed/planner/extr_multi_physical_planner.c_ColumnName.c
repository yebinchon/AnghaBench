
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int varattno; int varno; } ;
typedef TYPE_1__ Var ;
typedef int Value ;
struct TYPE_9__ {int * colnames; } ;
struct TYPE_8__ {int relid; TYPE_3__* eref; } ;
typedef TYPE_2__ RangeTblEntry ;
typedef int Oid ;
typedef int List ;
typedef int Index ;
typedef scalar_t__ CitusRTEKind ;
typedef int AttrNumber ;
typedef TYPE_3__ Alias ;


 int Assert (int ) ;
 scalar_t__ CITUS_RTE_RELATION ;
 scalar_t__ CITUS_RTE_REMOTE_QUERY ;
 scalar_t__ GetRangeTblKind (TYPE_2__*) ;
 char* get_attname (int ,int,int) ;
 scalar_t__ list_nth (int *,int) ;
 TYPE_2__* rt_fetch (int ,int *) ;
 char* strVal (int *) ;

__attribute__((used)) static char *
ColumnName(Var *column, List *rangeTableList)
{
 char *columnName = ((void*)0);
 Index tableId = column->varno;
 AttrNumber columnNumber = column->varattno;
 RangeTblEntry *rangeTableEntry = rt_fetch(tableId, rangeTableList);

 CitusRTEKind rangeTableKind = GetRangeTblKind(rangeTableEntry);
 if (rangeTableKind == CITUS_RTE_REMOTE_QUERY)
 {
  Alias *referenceNames = rangeTableEntry->eref;
  List *columnNameList = referenceNames->colnames;
  int columnIndex = columnNumber - 1;

  Value *columnValue = (Value *) list_nth(columnNameList, columnIndex);
  columnName = strVal(columnValue);
 }
 else if (rangeTableKind == CITUS_RTE_RELATION)
 {
  Oid relationId = rangeTableEntry->relid;
  columnName = get_attname(relationId, columnNumber, 0);
 }

 Assert(columnName != ((void*)0));
 return columnName;
}
