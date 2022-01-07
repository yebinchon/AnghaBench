
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int relid; } ;
typedef TYPE_1__ RangeTblEntry ;
typedef int Query ;


 int CheckInsertSelectQuery (int *) ;
 TYPE_1__* ExtractResultRelationRTE (int *) ;
 scalar_t__ IsDistributedTable (int ) ;

bool
InsertSelectIntoDistributedTable(Query *query)
{
 bool insertSelectQuery = CheckInsertSelectQuery(query);

 if (insertSelectQuery)
 {
  RangeTblEntry *insertRte = ExtractResultRelationRTE(query);
  if (IsDistributedTable(insertRte->relid))
  {
   return 1;
  }
 }

 return 0;
}
