
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MaxConnections ;
 int NUM_AUXILIARY_PROCS ;
 int autovacuum_max_workers ;
 int max_prepared_xacts ;
 scalar_t__ max_wal_senders ;
 int max_worker_processes ;

int
TotalProcCount(void)
{
 int maxBackends = 0;
 int totalProcs = 0;
 maxBackends = MaxConnections + autovacuum_max_workers + 1 + max_worker_processes;
 totalProcs = maxBackends + NUM_AUXILIARY_PROCS + max_prepared_xacts;





 return totalProcs;
}
