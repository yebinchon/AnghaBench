
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ varattno; } ;
typedef TYPE_1__ Var ;
typedef int Query ;
typedef scalar_t__ Oid ;
typedef int Expr ;


 TYPE_1__* DistPartitionKey (scalar_t__) ;
 int FindReferencedTableColumn (int *,int ,int *,scalar_t__*,TYPE_1__**) ;
 scalar_t__ InvalidOid ;
 int NIL ;

bool
IsPartitionColumn(Expr *columnExpression, Query *query)
{
 bool isPartitionColumn = 0;
 Oid relationId = InvalidOid;
 Var *column = ((void*)0);

 FindReferencedTableColumn(columnExpression, NIL, query, &relationId, &column);

 if (relationId != InvalidOid && column != ((void*)0))
 {
  Var *partitionColumn = DistPartitionKey(relationId);


  if (partitionColumn != ((void*)0) && column->varattno == partitionColumn->varattno)
  {
   isPartitionColumn = 1;
  }
 }

 return isPartitionColumn;
}
