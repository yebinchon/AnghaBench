#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  vnode; } ;
typedef  TYPE_1__ SVpeerCfgMsg ;
typedef  int /*<<< orphan*/  SMgmtObj ;

/* Variables and functions */
 int /*<<< orphan*/  TSDB_MSG_TYPE_VPEER_CFG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  mgmtObj ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

void FUNC3(int vnode) {
  char *        pMsg, *pStart;
  int           msgLen;
  SVpeerCfgMsg *pCfg;
  SMgmtObj *    pObj = &mgmtObj;

  pStart = FUNC1(pObj, TSDB_MSG_TYPE_VPEER_CFG);
  if (pStart == NULL) return;
  pMsg = pStart;

  pCfg = (SVpeerCfgMsg *)pMsg;
  pCfg->vnode = FUNC0(vnode);
  pMsg += sizeof(SVpeerCfgMsg);

  msgLen = pMsg - pStart;
  FUNC2(pObj, pStart, msgLen);
}