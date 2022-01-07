
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int acct; } ;
struct TYPE_7__ {int name; TYPE_1__ cfg; } ;
typedef int STabObj ;
typedef TYPE_2__ SDbObj ;
typedef int SAcctObj ;


 int TSDB_CODE_INVALID_TABLE ;
 int TSDB_CODE_MONITOR_DB_FORBEIDDEN ;
 int TSDB_CODE_SUCCESS ;
 int dropAllMetersOfMetric (TYPE_2__*,int *,int *) ;
 int dropMeterImp (TYPE_2__*,int *,int *) ;
 int meterSdb ;
 scalar_t__ mgmtCheckIsMonitorDB (int ,int ) ;
 int * mgmtGetAcct (int ) ;
 int * mgmtGetMeter (char*) ;
 scalar_t__ mgmtIsNormalMeter (int *) ;
 int sdbDeleteRow (int ,int *) ;
 int tsMonitorDbName ;

int mgmtDropMeter(SDbObj *pDb, char *meterId, int ignore) {
  STabObj * pMeter;
  SAcctObj *pAcct;

  pMeter = mgmtGetMeter(meterId);
  if (pMeter == ((void*)0)) {
    if (ignore) {
      return TSDB_CODE_SUCCESS;
    } else {
      return TSDB_CODE_INVALID_TABLE;
    }
  }

  pAcct = mgmtGetAcct(pDb->cfg.acct);


  if (mgmtCheckIsMonitorDB(pDb->name, tsMonitorDbName)) {
    return TSDB_CODE_MONITOR_DB_FORBEIDDEN;
  }

  if (mgmtIsNormalMeter(pMeter)) {
    return dropMeterImp(pDb, pMeter, pAcct);
  } else {
    dropAllMetersOfMetric(pDb, pMeter, pAcct);


    sdbDeleteRow(meterSdb, pMeter);
  }

  return 0;
}
