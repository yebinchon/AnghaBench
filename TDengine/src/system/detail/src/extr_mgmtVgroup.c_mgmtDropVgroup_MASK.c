#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int maxSessions; } ;
struct TYPE_13__ {int /*<<< orphan*/  name; TYPE_1__ cfg; } ;
struct TYPE_12__ {int /*<<< orphan*/  meterId; } ;
struct TYPE_11__ {scalar_t__ numOfMeters; int /*<<< orphan*/  numOfVnodes; int /*<<< orphan*/  vgId; TYPE_3__** meterList; } ;
typedef  TYPE_2__ SVgObj ;
typedef  TYPE_3__ STabObj ;
typedef  TYPE_4__ SDbObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  vgSdb ; 

int FUNC4(SDbObj *pDb, SVgObj *pVgroup) {
  STabObj *pMeter;

  if (pVgroup->numOfMeters > 0) {
    for (int i = 0; i < pDb->cfg.maxSessions; ++i) {
      if (pVgroup->meterList != NULL) {
        pMeter = pVgroup->meterList[i];
        if (pMeter) FUNC1(pDb, pMeter->meterId, 0);
      }
    }
  }

  FUNC0("vgroup:%d, db:%s replica:%d is deleted", pVgroup->vgId, pDb->name, pVgroup->numOfVnodes);
  FUNC2(pVgroup);
  FUNC3(vgSdb, pVgroup);

  return 0;
}