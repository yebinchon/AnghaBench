
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_20__ {int numOfTables; } ;
struct TYPE_17__ {size_t sid; int vgId; } ;
struct TYPE_19__ {char* pTagData; int meterId; TYPE_1__ gid; scalar_t__ schema; } ;
struct TYPE_18__ {scalar_t__ numOfMeters; int idPool; int ** meterList; int dbName; int vgId; } ;
typedef TYPE_2__ SVgObj ;
typedef TYPE_3__ STabObj ;
typedef TYPE_4__ SDbObj ;


 int assert (int ) ;
 int mError (char*,int ,int ) ;
 TYPE_4__* mgmtGetDb (int ) ;
 TYPE_4__* mgmtGetDbByMeterId (int ) ;
 TYPE_3__* mgmtGetMeter (char*) ;
 TYPE_2__* mgmtGetVgroup (int ) ;
 scalar_t__ mgmtIsNormalMeter (TYPE_3__*) ;
 scalar_t__ mgmtMeterCreateFromMetric (TYPE_3__*) ;
 int mgmtMoveVgroupToHead (TYPE_4__*,TYPE_2__*) ;
 int mgmtRemoveMeterFromMetric (TYPE_3__*,TYPE_3__*) ;
 int mgmtRemoveMetricFromDb (TYPE_4__*,TYPE_3__*) ;
 int taosFreeId (int ,size_t) ;

void *mgmtMeterActionDelete(void *row, char *str, int size, int *ssize) {
  STabObj *pMeter = ((void*)0);
  SVgObj * pVgroup = ((void*)0);
  SDbObj * pDb = ((void*)0);
  STabObj *pMetric = ((void*)0);

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
  }

  if (mgmtMeterCreateFromMetric(pMeter)) {
    pMeter->pTagData = (char *)pMeter->schema;
    pMetric = mgmtGetMeter(pMeter->pTagData);
    assert(pMetric != ((void*)0));
  }

  if (mgmtIsNormalMeter(pMeter)) {
    if (pMetric) mgmtRemoveMeterFromMetric(pMetric, pMeter);

    pVgroup->meterList[pMeter->gid.sid] = ((void*)0);
    pVgroup->numOfMeters--;
    pDb->numOfTables--;
    taosFreeId(pVgroup->idPool, pMeter->gid.sid);

    if (pVgroup->numOfMeters > 0) mgmtMoveVgroupToHead(pDb, pVgroup);
  } else {



    pDb = mgmtGetDbByMeterId(pMeter->meterId);
    if (pDb) mgmtRemoveMetricFromDb(pDb, pMeter);
  }

  return ((void*)0);
}
