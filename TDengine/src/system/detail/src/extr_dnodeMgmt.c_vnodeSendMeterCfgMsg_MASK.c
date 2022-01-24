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
struct TYPE_2__ {void* sid; void* vnode; } ;
typedef  int /*<<< orphan*/  SMgmtObj ;
typedef  TYPE_1__ SMeterCfgMsg ;

/* Variables and functions */
 int /*<<< orphan*/  TSDB_MSG_TYPE_METER_CFG ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  mgmtObj ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC3(int vnode, int sid) {
  char *        pMsg, *pStart;
  int           msgLen;
  SMeterCfgMsg *pCfg;
  SMgmtObj *    pObj = &mgmtObj;

  pStart = FUNC1(pObj, TSDB_MSG_TYPE_METER_CFG);
  if (pStart == NULL) return -1;
  pMsg = pStart;

  pCfg = (SMeterCfgMsg *)pMsg;
  pCfg->vnode = FUNC0(vnode);
  pCfg->sid = FUNC0(sid);
  pMsg += sizeof(SMeterCfgMsg);

  msgLen = pMsg - pStart;
  return FUNC2(pObj, pStart, msgLen);
}