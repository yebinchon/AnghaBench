#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  numOfTables; } ;
struct TYPE_17__ {size_t sid; int /*<<< orphan*/  vgId; } ;
struct TYPE_19__ {char* pTagData; int /*<<< orphan*/  meterId; TYPE_1__ gid; scalar_t__ schema; } ;
struct TYPE_18__ {scalar_t__ numOfMeters; int /*<<< orphan*/  idPool; int /*<<< orphan*/ ** meterList; int /*<<< orphan*/  dbName; int /*<<< orphan*/  vgId; } ;
typedef  TYPE_2__ SVgObj ;
typedef  TYPE_3__ STabObj ;
typedef  TYPE_4__ SDbObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (char*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,size_t) ; 

void *FUNC12(void *row, char *str, int size, int *ssize) {
  STabObj *pMeter = NULL;
  SVgObj * pVgroup = NULL;
  SDbObj * pDb = NULL;
  STabObj *pMetric = NULL;

  pMeter = (STabObj *)row;

  if (FUNC6(pMeter)) {
    pVgroup = FUNC5(pMeter->gid.vgId);
    if (pVgroup == NULL) {
      FUNC1("id:%s not in vgroup:%d", pMeter->meterId, pMeter->gid.vgId);
      return NULL;
    }

    pDb = FUNC2(pVgroup->dbName);
    if (pDb == NULL) {
      FUNC1("vgroup:%d not in DB:%s", pVgroup->vgId, pVgroup->dbName);
      return NULL;
    }
  }

  if (FUNC7(pMeter)) {
    pMeter->pTagData = (char *)pMeter->schema;
    pMetric = FUNC4(pMeter->pTagData);
    FUNC0(pMetric != NULL);
  }

  if (FUNC6(pMeter)) {
    if (pMetric) FUNC9(pMetric, pMeter);

    pVgroup->meterList[pMeter->gid.sid] = NULL;
    pVgroup->numOfMeters--;
    pDb->numOfTables--;
    FUNC11(pVgroup->idPool, pMeter->gid.sid);

    if (pVgroup->numOfMeters > 0) FUNC8(pDb, pVgroup);
  } else {
    // remove a metric
    // remove all the associated meters

    pDb = FUNC3(pMeter->meterId);
    if (pDb) FUNC10(pDb, pMeter);
  }

  return NULL;
}