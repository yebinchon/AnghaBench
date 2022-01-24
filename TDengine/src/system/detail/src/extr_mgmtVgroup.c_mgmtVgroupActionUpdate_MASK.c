#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int maxSessions; } ;
struct TYPE_7__ {TYPE_1__ cfg; } ;
struct TYPE_6__ {int /*<<< orphan*/  numOfVnodes; int /*<<< orphan*/  vgId; int /*<<< orphan*/ ** meterList; int /*<<< orphan*/  idPool; int /*<<< orphan*/  dbName; } ;
typedef  TYPE_2__ SVgObj ;
typedef  int /*<<< orphan*/  STabObj ;
typedef  TYPE_3__ SDbObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,char*,int,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

void *FUNC7(void *row, char *str, int size, int *ssize) {
  FUNC3(row, str, size, ssize);
  SVgObj *pVgroup = (SVgObj *)row;
  int oldTables = FUNC5(pVgroup->idPool);

  SDbObj *pDb = FUNC2(pVgroup->dbName);
  if (pDb != NULL) {
    if (pDb->cfg.maxSessions != oldTables) {
      FUNC0("vgroup:%d tables change from %d to %d", pVgroup->vgId, oldTables, pDb->cfg.maxSessions);
      FUNC6(pVgroup->idPool, pDb->cfg.maxSessions);
      int size = sizeof(STabObj *) * pDb->cfg.maxSessions;
      pVgroup->meterList = (STabObj **)FUNC4(pVgroup->meterList, size);
    }
  }

  FUNC1("vgroup:%d update, numOfVnode:%d", pVgroup->vgId, pVgroup->numOfVnodes);

  return NULL;
}