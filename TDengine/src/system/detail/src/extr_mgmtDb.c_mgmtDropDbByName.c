
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
typedef TYPE_1__ SDbObj ;
typedef int SAcctObj ;


 int TSDB_CODE_MONITOR_DB_FORBEIDDEN ;
 int TSDB_CODE_SUCCESS ;
 int dbSdb ;
 int mWarn (char*,char*) ;
 scalar_t__ mgmtCheckIsMonitorDB (int ,int ) ;
 int mgmtDropDb (TYPE_1__*) ;
 scalar_t__ sdbGetRow (int ,char*) ;
 int tsMonitorDbName ;

int mgmtDropDbByName(SAcctObj *pAcct, char *name) {
  SDbObj *pDb;
  pDb = (SDbObj *)sdbGetRow(dbSdb, name);
  if (pDb == ((void*)0)) {
    mWarn("db:%s is not there", name);

    return TSDB_CODE_SUCCESS;
  }

  if (mgmtCheckIsMonitorDB(pDb->name, tsMonitorDbName)) {
    return TSDB_CODE_MONITOR_DB_FORBEIDDEN;
  }

  return mgmtDropDb(pDb);
}
