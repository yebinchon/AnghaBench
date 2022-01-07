
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {int acct; } ;
struct TYPE_21__ {TYPE_2__ cfg; } ;
struct TYPE_17__ {size_t sid; int vgId; } ;
struct TYPE_20__ {scalar_t__ meterType; char* pSql; int numOfColumns; char* pTagData; scalar_t__ schema; TYPE_1__ gid; int meterId; scalar_t__ numOfMeters; } ;
struct TYPE_19__ {int idPool; TYPE_4__** meterList; } ;
typedef TYPE_3__ SVgObj ;
typedef TYPE_4__ STabObj ;
typedef int SSchema ;
typedef TYPE_5__ SDbObj ;
typedef int SAcctObj ;


 int SDB_KEYTYPE_STRING ;
 int TSDB_MAX_COLUMNS ;
 scalar_t__ TSDB_MAX_SQL_LEN ;
 scalar_t__ TSDB_METER_STABLE ;
 int mError (char*,...) ;
 int mTrace (char*) ;
 int * meterSdb ;
 int mgmtAddMeterIntoMetric (TYPE_4__*,TYPE_4__*) ;
 int mgmtAddMeterStatisticToAcct (TYPE_4__*,int *) ;
 int mgmtAddMetricIntoDb (TYPE_5__*,TYPE_4__*) ;
 int mgmtDirectory ;
 int * mgmtGetAcct (int ) ;
 TYPE_5__* mgmtGetDbByMeterId (int ) ;
 TYPE_4__* mgmtGetMeter (char*) ;
 TYPE_3__* mgmtGetVgroup (int ) ;
 scalar_t__ mgmtIsMetric (TYPE_4__*) ;
 scalar_t__ mgmtIsNormalMeter (TYPE_4__*) ;
 int mgmtMeterAction ;
 int mgmtMeterActionInit () ;
 scalar_t__ mgmtMeterCreateFromMetric (TYPE_4__*) ;
 int mgmtSetVgroupIdPool () ;
 void* sdbFetchRow (int *,void*,void**) ;
 int * sdbOpenTable (int ,scalar_t__,char*,int ,int ,int ) ;
 int taosIdPoolMarkStatus (int ,size_t,int) ;
 int tsMaxTables ;

int mgmtInitMeters() {
  void * pNode = ((void*)0);
  SVgObj * pVgroup = ((void*)0);
  STabObj * pMeter = ((void*)0);
  STabObj * pMetric = ((void*)0);
  SDbObj * pDb = ((void*)0);
  SAcctObj *pAcct = ((void*)0);


  mgmtMeterActionInit();

  meterSdb = sdbOpenTable(tsMaxTables, sizeof(STabObj) + sizeof(SSchema) * TSDB_MAX_COLUMNS + TSDB_MAX_SQL_LEN,
                          "meters", SDB_KEYTYPE_STRING, mgmtDirectory, mgmtMeterAction);
  if (meterSdb == ((void*)0)) {
    mError("failed to init meter data");
    return -1;
  }

  pNode = ((void*)0);
  while (1) {
    pNode = sdbFetchRow(meterSdb, pNode, (void **)&pMeter);
    if (pMeter == ((void*)0)) break;
    if (mgmtIsMetric(pMeter)) pMeter->numOfMeters = 0;
  }

  pNode = ((void*)0);
  while (1) {
    pNode = sdbFetchRow(meterSdb, pNode, (void **)&pMeter);
    if (pMeter == ((void*)0)) break;

    pDb = mgmtGetDbByMeterId(pMeter->meterId);
    if (pDb == ((void*)0)) {
      mError("failed to get db: %s", pMeter->meterId);
      continue;
    }

    if (mgmtIsNormalMeter(pMeter)) {
      pVgroup = mgmtGetVgroup(pMeter->gid.vgId);
      if (pVgroup == ((void*)0) || pVgroup->meterList == ((void*)0)) {
        mError("failed to get vgroup:%i", pMeter->gid.vgId);
        continue;
      }
      pVgroup->meterList[pMeter->gid.sid] = pMeter;
      taosIdPoolMarkStatus(pVgroup->idPool, pMeter->gid.sid, 1);

      if (pMeter->meterType == TSDB_METER_STABLE) {
        pMeter->pSql = (char *)pMeter->schema + sizeof(SSchema) * pMeter->numOfColumns;
      }

      if (mgmtMeterCreateFromMetric(pMeter)) {
        pMeter->pTagData = (char *)pMeter->schema;
        pMetric = mgmtGetMeter(pMeter->pTagData);
        if (pMetric) mgmtAddMeterIntoMetric(pMetric, pMeter);
      }

      pAcct = mgmtGetAcct(pDb->cfg.acct);
      if (pAcct) mgmtAddMeterStatisticToAcct(pMeter, pAcct);
    } else {
      if (pDb) mgmtAddMetricIntoDb(pDb, pMeter);
    }
  }

  mgmtSetVgroupIdPool();

  mTrace("meter is initialized");
  return 0;
}
