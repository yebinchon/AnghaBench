
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int planTree; } ;
struct TYPE_6__ {TYPE_2__* plannedstmt; } ;
typedef TYPE_1__ QueryDesc ;
typedef TYPE_2__ PlannedStmt ;


 scalar_t__ CitusHasBeenLoaded () ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 scalar_t__ IsCitusPlan (int ) ;
 scalar_t__ IsLocalReferenceTableJoinPlan (TYPE_2__*) ;
 scalar_t__ IsMultiStatementTransaction () ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_RE_THROW () ;
 int PG_TRY () ;
 scalar_t__ RecoveryInProgress () ;
 scalar_t__ WritableStandbyCoordinator ;
 int XactReadOnly ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int standard_ExecutorStart (TYPE_1__*,int) ;

void
CitusExecutorStart(QueryDesc *queryDesc, int eflags)
{
 PlannedStmt *plannedStmt = queryDesc->plannedstmt;

 if (CitusHasBeenLoaded())
 {
  if (IsLocalReferenceTableJoinPlan(plannedStmt) &&
   IsMultiStatementTransaction())
  {






   ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("cannot join local tables and reference tables in "
           "a transaction block")));
  }
 }






 if (RecoveryInProgress() && WritableStandbyCoordinator &&
  IsCitusPlan(plannedStmt->planTree))
 {
  PG_TRY();
  {





   XactReadOnly = 0;
   standard_ExecutorStart(queryDesc, eflags);
   XactReadOnly = 1;
  }
  PG_CATCH();
  {
   XactReadOnly = 1;
   PG_RE_THROW();
  }
  PG_END_TRY();
 }
 else

 {
  standard_ExecutorStart(queryDesc, eflags);
 }
}
