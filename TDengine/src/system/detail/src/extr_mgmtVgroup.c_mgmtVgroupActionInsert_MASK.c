#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int maxSessions; } ;
struct TYPE_9__ {TYPE_1__ cfg; } ;
struct TYPE_8__ {int /*<<< orphan*/  vgId; int /*<<< orphan*/  numOfVnodes; int /*<<< orphan*/  vnodeGid; int /*<<< orphan*/  idPool; scalar_t__ numOfMeters; int /*<<< orphan*/ ** meterList; int /*<<< orphan*/  dbName; } ;
typedef  TYPE_2__ SVgObj ;
typedef  int /*<<< orphan*/  STabObj ;
typedef  TYPE_3__ SDbObj ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void *FUNC6(void *row, char *str, int size, int *ssize) {
  SVgObj *pVgroup = (SVgObj *)row;
  SDbObj *pDb = FUNC3(pVgroup->dbName);

  if (pDb == NULL) return NULL;

  int tsize = sizeof(STabObj *) * pDb->cfg.maxSessions;
  pVgroup->meterList = (STabObj **)FUNC0(tsize);
  FUNC1(pVgroup->meterList, 0, tsize);
  pVgroup->numOfMeters = 0;
  pVgroup->idPool = FUNC5(pDb->cfg.maxSessions);
  FUNC2(pDb, pVgroup);
  FUNC4(pVgroup->vnodeGid, pVgroup->numOfVnodes, pVgroup->vgId);

  return NULL;
}