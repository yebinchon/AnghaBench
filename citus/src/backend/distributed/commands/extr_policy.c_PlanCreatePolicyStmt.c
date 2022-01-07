
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int table; } ;
typedef int Oid ;
typedef int List ;
typedef TYPE_1__ CreatePolicyStmt ;


 int AccessExclusiveLock ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 scalar_t__ IsDistributedTable (int ) ;
 int * NIL ;
 int RangeVarGetRelid (int ,int ,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

List *
PlanCreatePolicyStmt(CreatePolicyStmt *stmt)
{
 Oid relationId = RangeVarGetRelid(stmt->table,
           AccessExclusiveLock,
           0);
 if (IsDistributedTable(relationId))
 {
  ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("policies on distributed tables are only supported in "
          "Citus Enterprise")));
 }


 return NIL;
}
