
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TSDB_MOD_MGMT ;
 int mTrace (char*) ;
 int mgmtCleanUpAccts () ;
 int mgmtCleanUpDbs () ;
 int mgmtCleanUpDnodeInt () ;
 int mgmtCleanUpDnodes () ;
 int mgmtCleanUpMeters () ;
 int mgmtCleanUpRedirect () ;
 int mgmtCleanUpShell () ;
 int mgmtCleanUpUsers () ;
 int mgmtCleanUpVgroups () ;
 int mgmtCleanupBalance () ;
 scalar_t__ mgmtDnodeConns ;
 int * mgmtQhandle ;
 scalar_t__ mgmtShellConns ;
 int mgmtStatisticTimer ;
 int * mgmtTmr ;
 int * mgmtTranQhandle ;
 int * pShellConn ;
 int sdbCleanUpPeers () ;
 int taosCleanUpScheduler (int *) ;
 int taosTmrCleanUp (int *) ;
 int taosTmrStopA (int *) ;
 int tclearModuleStatus (int) ;
 int tsModuleStatus ;

void mgmtCleanUpSystem() {
  if (tsModuleStatus & (1 << TSDB_MOD_MGMT)) {
    mTrace("mgmt is running, clean it up");
    taosTmrStopA(&mgmtStatisticTimer);
    sdbCleanUpPeers();
    mgmtCleanupBalance();
    mgmtCleanUpDnodeInt();
    mgmtCleanUpShell();
    mgmtCleanUpMeters();
    mgmtCleanUpVgroups();
    mgmtCleanUpDbs();
    mgmtCleanUpDnodes();
    mgmtCleanUpUsers();
    mgmtCleanUpAccts();
    taosTmrCleanUp(mgmtTmr);
    taosCleanUpScheduler(mgmtQhandle);
    taosCleanUpScheduler(mgmtTranQhandle);
  } else {
    mgmtCleanUpRedirect();
  }

  mgmtTmr = ((void*)0);
  mgmtQhandle = ((void*)0);
  mgmtShellConns = 0;
  mgmtDnodeConns = 0;
  tclearModuleStatus(TSDB_MOD_MGMT);
  pShellConn = ((void*)0);

  mTrace("mgmt is cleaned up");
}
