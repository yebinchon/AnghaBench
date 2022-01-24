#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int replications; } ;
struct TYPE_16__ {int /*<<< orphan*/  name; int /*<<< orphan*/  vgTimer; int /*<<< orphan*/  vgStatus; TYPE_1__ cfg; } ;
struct TYPE_15__ {int numOfVnodes; TYPE_2__* vnodeGid; int /*<<< orphan*/  vgId; int /*<<< orphan*/  createdTime; int /*<<< orphan*/  dbName; } ;
struct TYPE_14__ {int vnode; int /*<<< orphan*/  ip; } ;
typedef  TYPE_3__ SVgObj ;
typedef  TYPE_4__ SDbObj ;

/* Variables and functions */
 int /*<<< orphan*/  TSDB_VG_STATUS_FULL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  mgmtProcessVgTimer ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  mgmtTmr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vgSdb ; 

SVgObj *FUNC12(SDbObj *pDb) {
  SVgObj *pVgroup;
  int     size;

  size = sizeof(SVgObj);
  pVgroup = (SVgObj *)FUNC3(size);
  FUNC4(pVgroup, 0, size);
  FUNC8(pVgroup->dbName, pDb->name);
  pVgroup->numOfVnodes = pDb->cfg.replications;
  pVgroup->createdTime = FUNC9();

  // based on load balance, create a new one
  if (FUNC5(pVgroup) != 0) {
    FUNC1("no enough free dnode");
    FUNC0(pVgroup);
    pDb->vgStatus = TSDB_VG_STATUS_FULL;
    FUNC11(mgmtProcessVgTimer, 5000, pDb, mgmtTmr, &pDb->vgTimer);
    return NULL;
  }

  FUNC7(vgSdb, pVgroup, 0);

  FUNC2("vgroup:%d, db:%s replica:%d is created", pVgroup->vgId, pDb->name, pVgroup->numOfVnodes);
  for (int i = 0; i < pVgroup->numOfVnodes; ++i)
    FUNC2("dnode:%s, vgroup:%d, vnode:%d is created", FUNC10(pVgroup->vnodeGid[i].ip), pVgroup->vgId, pVgroup->vnodeGid[i].vnode);

  FUNC6(pVgroup);

  return pVgroup;
}