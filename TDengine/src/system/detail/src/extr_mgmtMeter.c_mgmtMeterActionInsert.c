
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_21__ {int numOfTimeSeries; } ;
struct TYPE_27__ {TYPE_1__ acctInfo; } ;
struct TYPE_23__ {int maxSessions; int acct; } ;
struct TYPE_26__ {int numOfVgroups; TYPE_3__ cfg; int numOfTables; } ;
struct TYPE_22__ {int vgId; int sid; } ;
struct TYPE_25__ {int meterId; char* pTagData; scalar_t__ meterType; char* pSql; int numOfColumns; int * pSkipList; int * pHead; TYPE_2__ gid; scalar_t__ schema; } ;
struct TYPE_24__ {int dbName; int vgId; int numOfMeters; TYPE_5__** meterList; int idPool; } ;
typedef TYPE_4__ SVgObj ;
typedef TYPE_5__ STabObj ;
typedef int SSchema ;
typedef TYPE_6__ SDbObj ;
typedef TYPE_7__ SAcctObj ;


 scalar_t__ TSDB_METER_STABLE ;
 int assert (int ) ;
 int mError (char*,...) ;
 int mgmtAddMeterIntoMetric (TYPE_5__*,TYPE_5__*) ;
 int mgmtAddMetricIntoDb (TYPE_6__*,TYPE_5__*) ;
 TYPE_7__* mgmtGetAcct (int ) ;
 TYPE_6__* mgmtGetDb (int) ;
 TYPE_6__* mgmtGetDbByMeterId (int) ;
 TYPE_5__* mgmtGetMeter (char*) ;
 TYPE_4__* mgmtGetVgroup (int) ;
 scalar_t__ mgmtIsNormalMeter (TYPE_5__*) ;
 scalar_t__ mgmtMeterCreateFromMetric (TYPE_5__*) ;
 int mgmtMoveVgroupToTail (TYPE_6__*,TYPE_4__*) ;
 int sdbMaster ;
 int taosAllocateId (int ) ;

void *mgmtMeterActionInsert(void *row, char *str, int size, int *ssize) {
  STabObj * pMeter = ((void*)0);
  SVgObj * pVgroup = ((void*)0);
  SDbObj * pDb = ((void*)0);
  STabObj * pMetric = ((void*)0);
  SAcctObj *pAcct = ((void*)0);

  pMeter = (STabObj *)row;

  if (mgmtIsNormalMeter(pMeter)) {
    pVgroup = mgmtGetVgroup(pMeter->gid.vgId);
    if (pVgroup == ((void*)0)) {
      mError("id:%s not in vgroup:%d", pMeter->meterId, pMeter->gid.vgId);
      return ((void*)0);
    }

    pDb = mgmtGetDb(pVgroup->dbName);
    if (pDb == ((void*)0)) {
      mError("vgroup:%d not in DB:%s", pVgroup->vgId, pVgroup->dbName);
      return ((void*)0);
    }

    pAcct = mgmtGetAcct(pDb->cfg.acct);

    if (pAcct == ((void*)0)) {
      mError("account not exists");
      return ((void*)0);
    }
  }

  if (mgmtMeterCreateFromMetric(pMeter)) {
    pMeter->pTagData = (char *)pMeter->schema;
    pMetric = mgmtGetMeter(pMeter->pTagData);
    assert(pMetric != ((void*)0));
  }

  if (pMeter->meterType == TSDB_METER_STABLE) {
    pMeter->pSql = (char *)pMeter->schema + sizeof(SSchema) * pMeter->numOfColumns;
  }

  if (mgmtIsNormalMeter(pMeter)) {
    if (pMetric) mgmtAddMeterIntoMetric(pMetric, pMeter);

    if (!sdbMaster) {
      int sid = taosAllocateId(pVgroup->idPool);
      if (sid != pMeter->gid.sid) {
        mError("sid:%d is not matched from the master:%d", sid, pMeter->gid.sid);
        return ((void*)0);
      }
    }

    pAcct->acctInfo.numOfTimeSeries += (pMeter->numOfColumns - 1);
    pVgroup->numOfMeters++;
    pDb->numOfTables++;
    pVgroup->meterList[pMeter->gid.sid] = pMeter;

    if (pVgroup->numOfMeters >= pDb->cfg.maxSessions - 1 && pDb->numOfVgroups > 1) mgmtMoveVgroupToTail(pDb, pVgroup);
  } else {

    pMeter->pHead = ((void*)0);
    pMeter->pSkipList = ((void*)0);
    pDb = mgmtGetDbByMeterId(pMeter->meterId);
    if (pDb) {
      mgmtAddMetricIntoDb(pDb, pMeter);
    }
  }

  return ((void*)0);
}
