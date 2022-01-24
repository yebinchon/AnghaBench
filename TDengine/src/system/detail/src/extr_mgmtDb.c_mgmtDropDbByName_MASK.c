#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ SDbObj ;
typedef  int /*<<< orphan*/  SAcctObj ;

/* Variables and functions */
 int TSDB_CODE_MONITOR_DB_FORBEIDDEN ; 
 int TSDB_CODE_SUCCESS ; 
 int /*<<< orphan*/  dbSdb ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  tsMonitorDbName ; 

int FUNC4(SAcctObj *pAcct, char *name) {
  SDbObj *pDb;
  pDb = (SDbObj *)FUNC3(dbSdb, name);
  if (pDb == NULL) {
    FUNC0("db:%s is not there", name);
    // return TSDB_CODE_INVALID_DB;
    return TSDB_CODE_SUCCESS;
  }

  if (FUNC1(pDb->name, tsMonitorDbName)) {
    return TSDB_CODE_MONITOR_DB_FORBEIDDEN;
  }

  return FUNC2(pDb);
}