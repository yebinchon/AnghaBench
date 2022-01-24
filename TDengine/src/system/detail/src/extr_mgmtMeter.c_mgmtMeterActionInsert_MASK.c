#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  numOfTimeSeries; } ;
struct TYPE_27__ {TYPE_1__ acctInfo; } ;
struct TYPE_23__ {int maxSessions; int /*<<< orphan*/  acct; } ;
struct TYPE_26__ {int numOfVgroups; TYPE_3__ cfg; int /*<<< orphan*/  numOfTables; } ;
struct TYPE_22__ {int vgId; int sid; } ;
struct TYPE_25__ {int meterId; char* pTagData; scalar_t__ meterType; char* pSql; int numOfColumns; int /*<<< orphan*/ * pSkipList; int /*<<< orphan*/ * pHead; TYPE_2__ gid; scalar_t__ schema; } ;
struct TYPE_24__ {int dbName; int vgId; int numOfMeters; TYPE_5__** meterList; int /*<<< orphan*/  idPool; } ;
typedef  TYPE_4__ SVgObj ;
typedef  TYPE_5__ STabObj ;
typedef  int /*<<< orphan*/  SSchema ;
typedef  TYPE_6__ SDbObj ;
typedef  TYPE_7__ SAcctObj ;

/* Variables and functions */
 scalar_t__ TSDB_METER_STABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,TYPE_5__*) ; 
 TYPE_7__* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC5 (int) ; 
 TYPE_6__* FUNC6 (int) ; 
 TYPE_5__* FUNC7 (char*) ; 
 TYPE_4__* FUNC8 (int) ; 
 scalar_t__ FUNC9 (TYPE_5__*) ; 
 scalar_t__ FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,TYPE_4__*) ; 
 int /*<<< orphan*/  sdbMaster ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

void *FUNC13(void *row, char *str, int size, int *ssize) {
  STabObj * pMeter = NULL;
  SVgObj *  pVgroup = NULL;
  SDbObj *  pDb = NULL;
  STabObj * pMetric = NULL;
  SAcctObj *pAcct = NULL;

  pMeter = (STabObj *)row;

  if (FUNC9(pMeter)) {
    pVgroup = FUNC8(pMeter->gid.vgId);
    if (pVgroup == NULL) {
      FUNC1("id:%s not in vgroup:%d", pMeter->meterId, pMeter->gid.vgId);
      return NULL;
    }

    pDb = FUNC5(pVgroup->dbName);
    if (pDb == NULL) {
      FUNC1("vgroup:%d not in DB:%s", pVgroup->vgId, pVgroup->dbName);
      return NULL;
    }

    pAcct = FUNC4(pDb->cfg.acct);
    // TODO : check if account exists.
    if (pAcct == NULL) {
      FUNC1("account not exists");
      return NULL;
    }
  }

  if (FUNC10(pMeter)) {
    pMeter->pTagData = (char *)pMeter->schema;
    pMetric = FUNC7(pMeter->pTagData);
    FUNC0(pMetric != NULL);
  }

  if (pMeter->meterType == TSDB_METER_STABLE) {
    pMeter->pSql = (char *)pMeter->schema + sizeof(SSchema) * pMeter->numOfColumns;
  }

  if (FUNC9(pMeter)) {
    if (pMetric) FUNC2(pMetric, pMeter);

    if (!sdbMaster) {
      int sid = FUNC12(pVgroup->idPool);
      if (sid != pMeter->gid.sid) {
        FUNC1("sid:%d is not matched from the master:%d", sid, pMeter->gid.sid);
        return NULL;
      }
    }

    pAcct->acctInfo.numOfTimeSeries += (pMeter->numOfColumns - 1);
    pVgroup->numOfMeters++;
    pDb->numOfTables++;
    pVgroup->meterList[pMeter->gid.sid] = pMeter;

    if (pVgroup->numOfMeters >= pDb->cfg.maxSessions - 1 && pDb->numOfVgroups > 1) FUNC11(pDb, pVgroup);
  } else {
    // insert a metric
    pMeter->pHead = NULL;
    pMeter->pSkipList = NULL;
    pDb = FUNC6(pMeter->meterId);
    if (pDb) {
      FUNC3(pDb, pMeter);
    }
  }

  return NULL;
}