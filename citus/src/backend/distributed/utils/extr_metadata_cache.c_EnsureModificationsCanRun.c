
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERROR ;
 scalar_t__ ReadFromSecondaries ;
 scalar_t__ RecoveryInProgress () ;
 scalar_t__ USE_SECONDARY_NODES_ALWAYS ;
 int WritableStandbyCoordinator ;
 int ereport (int ,int ) ;
 int errdetail (char*) ;
 int errmsg (char*) ;

void
EnsureModificationsCanRun(void)
{
 if (RecoveryInProgress() && !WritableStandbyCoordinator)
 {
  ereport(ERROR, (errmsg("writing to worker nodes is not currently allowed"),
      errdetail("the database is in recovery mode")));
 }

 if (ReadFromSecondaries == USE_SECONDARY_NODES_ALWAYS)
 {
  ereport(ERROR, (errmsg("writing to worker nodes is not currently allowed"),
      errdetail("citus.use_secondary_nodes is set to 'always'")));
 }
}
