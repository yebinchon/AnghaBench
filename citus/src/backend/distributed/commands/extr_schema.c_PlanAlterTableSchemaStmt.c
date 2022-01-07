
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int missing_ok; int * relation; } ;
typedef int Oid ;
typedef int List ;
typedef TYPE_1__ AlterObjectSchemaStmt ;


 int AccessExclusiveLock ;
 int InvalidOid ;
 int IsDistributedTable (int ) ;
 int * NIL ;
 int OidIsValid (int ) ;
 int RangeVarGetRelid (int *,int ,int ) ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;

List *
PlanAlterTableSchemaStmt(AlterObjectSchemaStmt *stmt, const char *queryString)
{
 Oid relationId = InvalidOid;

 if (stmt->relation == ((void*)0))
 {
  return NIL;
 }

 relationId = RangeVarGetRelid(stmt->relation,
          AccessExclusiveLock,
          stmt->missing_ok);


 if (!OidIsValid(relationId) || !IsDistributedTable(relationId))
 {
  return NIL;
 }


 ereport(WARNING, (errmsg("not propagating ALTER ... SET SCHEMA commands to "
        "worker nodes"),
       errhint("Connect to worker nodes directly to manually "
         "change schemas of affected objects.")));

 return NIL;
}
