
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG1 ;
 int ERROR ;
 scalar_t__ ParallelQueryExecutedInTransaction () ;
 int SetLocalMultiShardModifyModeToSequential () ;
 int ereport (int ,int ) ;
 int errdetail (char*) ;
 int errhint (char*) ;
 int errmsg (char*) ;

__attribute__((used)) static void
EnsureSequentialModeForFunctionDDL(void)
{
 if (ParallelQueryExecutedInTransaction())
 {
  ereport(ERROR, (errmsg("cannot create function because there was a "
          "parallel operation on a distributed table in the "
          "transaction"),
      errdetail("When creating a distributed function, Citus needs to "
          "perform all operations over a single connection per "
          "node to ensure consistency."),
      errhint("Try re-running the transaction with "
        "\"SET LOCAL citus.multi_shard_modify_mode TO "
        "\'sequential\';\"")));
 }

 ereport(DEBUG1, (errmsg("switching to sequential query execution mode"),
      errdetail(
       "A distributed function is created. To make sure subsequent "
       "commands see the type correctly we need to make sure to "
       "use only one connection for all future commands")));
 SetLocalMultiShardModifyModeToSequential();
}
