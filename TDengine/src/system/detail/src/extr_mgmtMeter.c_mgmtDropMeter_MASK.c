#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  acct; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; TYPE_1__ cfg; } ;
typedef  int /*<<< orphan*/  STabObj ;
typedef  TYPE_2__ SDbObj ;
typedef  int /*<<< orphan*/  SAcctObj ;

/* Variables and functions */
 int TSDB_CODE_INVALID_TABLE ; 
 int TSDB_CODE_MONITOR_DB_FORBEIDDEN ; 
 int TSDB_CODE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  meterSdb ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tsMonitorDbName ; 

int FUNC7(SDbObj *pDb, char *meterId, int ignore) {
  STabObj * pMeter;
  SAcctObj *pAcct;

  pMeter = FUNC4(meterId);
  if (pMeter == NULL) {
    if (ignore) {
      return TSDB_CODE_SUCCESS;
    } else {
      return TSDB_CODE_INVALID_TABLE;
    }
  }

  pAcct = FUNC3(pDb->cfg.acct);

  // 0.log
  if (FUNC2(pDb->name, tsMonitorDbName)) {
    return TSDB_CODE_MONITOR_DB_FORBEIDDEN;
  }

  if (FUNC5(pMeter)) {
    return FUNC1(pDb, pMeter, pAcct);
  } else {
    // remove a metric
    /*
    if (pMeter->numOfMeters > 0) {
      assert(pMeter->pSkipList != NULL && pMeter->pSkipList->nSize > 0);
      return TSDB_CODE_RELATED_TABLES_EXIST;
    }
    */
    // first delet all meters of metric
    FUNC0(pDb, pMeter, pAcct);

    // finally delete metric
    FUNC6(meterSdb, pMeter);
  }

  return 0;
}