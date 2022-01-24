#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  acct; } ;
struct TYPE_21__ {TYPE_2__ cfg; } ;
struct TYPE_17__ {size_t sid; int /*<<< orphan*/  vgId; } ;
struct TYPE_20__ {scalar_t__ meterType; char* pSql; int numOfColumns; char* pTagData; scalar_t__ schema; TYPE_1__ gid; int /*<<< orphan*/  meterId; scalar_t__ numOfMeters; } ;
struct TYPE_19__ {int /*<<< orphan*/  idPool; TYPE_4__** meterList; } ;
typedef  TYPE_3__ SVgObj ;
typedef  TYPE_4__ STabObj ;
typedef  int /*<<< orphan*/  SSchema ;
typedef  TYPE_5__ SDbObj ;
typedef  int /*<<< orphan*/  SAcctObj ;

/* Variables and functions */
 int /*<<< orphan*/  SDB_KEYTYPE_STRING ; 
 int TSDB_MAX_COLUMNS ; 
 scalar_t__ TSDB_MAX_SQL_LEN ; 
 scalar_t__ TSDB_METER_STABLE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * meterSdb ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  mgmtDirectory ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC7 (char*) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_4__*) ; 
 scalar_t__ FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  mgmtMeterAction ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 void* FUNC14 (int /*<<< orphan*/ *,void*,void**) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  tsMaxTables ; 

int FUNC17() {
  void *    pNode = NULL;
  SVgObj *  pVgroup = NULL;
  STabObj * pMeter = NULL;
  STabObj * pMetric = NULL;
  SDbObj *  pDb = NULL;
  SAcctObj *pAcct = NULL;

  // TODO: Make sure this function only run once
  FUNC11();

  meterSdb = FUNC15(tsMaxTables, sizeof(STabObj) + sizeof(SSchema) * TSDB_MAX_COLUMNS + TSDB_MAX_SQL_LEN,
                          "meters", SDB_KEYTYPE_STRING, mgmtDirectory, mgmtMeterAction);
  if (meterSdb == NULL) {
    FUNC0("failed to init meter data");
    return -1;
  }

  pNode = NULL;
  while (1) {
    pNode = FUNC14(meterSdb, pNode, (void **)&pMeter);
    if (pMeter == NULL) break;
    if (FUNC9(pMeter)) pMeter->numOfMeters = 0;
  }

  pNode = NULL;
  while (1) {
    pNode = FUNC14(meterSdb, pNode, (void **)&pMeter);
    if (pMeter == NULL) break;

    pDb = FUNC6(pMeter->meterId);
    if (pDb == NULL) {
      FUNC0("failed to get db: %s", pMeter->meterId);
      continue;
    }

    if (FUNC10(pMeter)) {
      pVgroup = FUNC8(pMeter->gid.vgId);
      if (pVgroup == NULL || pVgroup->meterList == NULL) {
        FUNC0("failed to get vgroup:%i", pMeter->gid.vgId);
        continue;
      }
      pVgroup->meterList[pMeter->gid.sid] = pMeter;
      FUNC16(pVgroup->idPool, pMeter->gid.sid, 1);

      if (pMeter->meterType == TSDB_METER_STABLE) {
        pMeter->pSql = (char *)pMeter->schema + sizeof(SSchema) * pMeter->numOfColumns;
      }

      if (FUNC12(pMeter)) {
        pMeter->pTagData = (char *)pMeter->schema;  // + sizeof(SSchema)*pMeter->numOfColumns;
        pMetric = FUNC7(pMeter->pTagData);
        if (pMetric) FUNC2(pMetric, pMeter);
      }

      pAcct = FUNC5(pDb->cfg.acct);
      if (pAcct) FUNC3(pMeter, pAcct);
    } else {
      if (pDb) FUNC4(pDb, pMeter);
    }
  }

  FUNC13();

  FUNC1("meter is initialized");
  return 0;
}