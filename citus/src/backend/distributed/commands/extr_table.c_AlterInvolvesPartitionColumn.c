
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ varattno; } ;
typedef TYPE_1__ Var ;
struct TYPE_12__ {char* name; } ;
struct TYPE_11__ {int cmds; } ;
struct TYPE_10__ {scalar_t__ attnum; } ;
typedef int Oid ;
typedef int LOCKMODE ;
typedef int * HeapTuple ;
typedef TYPE_2__* Form_pg_attribute ;
typedef TYPE_3__ AlterTableStmt ;
typedef TYPE_4__ AlterTableCmd ;


 int AlterTableGetLockLevel (int ) ;
 int AlterTableLookupRelation (TYPE_3__*,int ) ;
 TYPE_1__* DistPartitionKey (int ) ;
 int GETSTRUCT (int *) ;
 scalar_t__ HeapTupleIsValid (int *) ;
 int OidIsValid (int ) ;
 int ReleaseSysCache (int *) ;
 int * SearchSysCacheAttName (int ,char*) ;

__attribute__((used)) static bool
AlterInvolvesPartitionColumn(AlterTableStmt *alterTableStatement,
        AlterTableCmd *command)
{
 bool involvesPartitionColumn = 0;
 Var *partitionColumn = ((void*)0);
 HeapTuple tuple = ((void*)0);
 char *alterColumnName = command->name;

 LOCKMODE lockmode = AlterTableGetLockLevel(alterTableStatement->cmds);
 Oid relationId = AlterTableLookupRelation(alterTableStatement, lockmode);
 if (!OidIsValid(relationId))
 {
  return 0;
 }

 partitionColumn = DistPartitionKey(relationId);

 tuple = SearchSysCacheAttName(relationId, alterColumnName);
 if (HeapTupleIsValid(tuple))
 {
  Form_pg_attribute targetAttr = (Form_pg_attribute) GETSTRUCT(tuple);


  if (partitionColumn != ((void*)0) &&
   targetAttr->attnum == partitionColumn->varattno)
  {
   involvesPartitionColumn = 1;
  }

  ReleaseSysCache(tuple);
 }

 return involvesPartitionColumn;
}
