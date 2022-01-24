#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ dropStatus; TYPE_1__* pHead; } ;
struct TYPE_8__ {struct TYPE_8__* next; } ;
typedef  TYPE_1__ SVgObj ;
typedef  TYPE_2__ SDbObj ;

/* Variables and functions */
 int TSDB_CODE_ACTION_IN_PROGRESS ; 
 scalar_t__ TSDB_DB_STATUS_DROPPING ; 
 scalar_t__ TSDB_DB_STATUS_DROP_FROM_SDB ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_2__*) ; 

int FUNC4(SDbObj *pDb) {
  if (pDb->dropStatus == TSDB_DB_STATUS_DROPPING) {
    bool finished = FUNC0(pDb);
    if (!finished) {
      SVgObj *pVgroup = pDb->pHead;
      while (pVgroup != NULL) {
        FUNC2(pVgroup);
        pVgroup = pVgroup->next;
      }
      return TSDB_CODE_ACTION_IN_PROGRESS;
    }

    // don't sync this action
    pDb->dropStatus = TSDB_DB_STATUS_DROP_FROM_SDB;
    FUNC1(pDb);
    return 0;
  } else {
    int code = FUNC3(pDb);
    if (code != 0) return code;
    return TSDB_CODE_ACTION_IN_PROGRESS;
  }
}