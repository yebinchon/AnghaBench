#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_5__ {int numOfVnodes; int /*<<< orphan*/  lastCreate; TYPE_1__* vnodeGid; } ;
struct TYPE_4__ {int /*<<< orphan*/  vnode; int /*<<< orphan*/  ip; } ;
typedef  TYPE_2__ SVgObj ;
typedef  int /*<<< orphan*/  STabObj ;
typedef  int /*<<< orphan*/  SDnodeObj ;

/* Variables and functions */
 int /*<<< orphan*/  TSDB_MSG_TYPE_CREATE ; 
 char* FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC5(STabObj *pMeter, SVgObj *pVgroup) {
  char *     pMsg, *pStart;
  int        i, msgLen = 0;
  SDnodeObj *pObj;
  uint64_t   timeStamp;

  timeStamp = FUNC3();

  for (i = 0; i < pVgroup->numOfVnodes; ++i) {
    //if (pVgroup->vnodeGid[i].ip == 0) continue;

    pObj = FUNC1(pVgroup->vnodeGid[i].ip);
    if (pObj == NULL) continue;

    pStart = FUNC2(pObj, TSDB_MSG_TYPE_CREATE, 64000);
    if (pStart == NULL) continue;
    pMsg = FUNC0(pMeter, pStart, pVgroup->vnodeGid[i].vnode);
    msgLen = pMsg - pStart;

    FUNC4(pObj, pStart, msgLen);
  }

  pVgroup->lastCreate = timeStamp;

  return 0;
}