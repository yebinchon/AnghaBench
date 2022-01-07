
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERROR ;
 scalar_t__ LocalExecutionHappened ;
 int ereport (int ,int ) ;
 int errdetail (char*) ;
 int errhint (char*) ;
 int errmsg (char*) ;

void
ErrorIfLocalExecutionHappened(void)
{
 if (LocalExecutionHappened)
 {
  ereport(ERROR, (errmsg("cannot execute command because a local execution has "
          "already been done in the transaction"),
      errhint("Try re-running the transaction with "
        "\"SET LOCAL citus.enable_local_execution TO OFF;\""),
      errdetail("Some parallel commands cannot be executed if a "
          "previous command has already been executed locally")));
 }
}
