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
typedef  void* int32_t ;
struct TYPE_13__ {int numOfVnodes; TYPE_1__* vload; int /*<<< orphan*/  privateIp; } ;
struct TYPE_12__ {int /*<<< orphan*/  vgId; } ;
struct TYPE_11__ {int vnode; } ;
struct TYPE_10__ {int /*<<< orphan*/  vgId; } ;
typedef  TYPE_2__ SVpeerCfgMsg ;
typedef  TYPE_3__ SVgObj ;
typedef  TYPE_4__ SDnodeObj ;

/* Variables and functions */
 char TSDB_CODE_INVALID_VALUE ; 
 int /*<<< orphan*/  TSDB_MSG_TYPE_VPEER_CFG_RSP ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,...) ; 
 char* FUNC2 (char*,TYPE_3__*,int) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*,int) ; 

int FUNC7(char *cont, int contLen, SDnodeObj *pObj) {
  char *        pMsg, *pStart;
  int           msgLen = 0;
  SVpeerCfgMsg *pCfg = (SVpeerCfgMsg *)cont;
  SVgObj *      pVgroup = NULL;

  int vnode = FUNC0(pCfg->vnode);

  pStart = FUNC4(pObj, TSDB_MSG_TYPE_VPEER_CFG_RSP);
  if (pStart == NULL) return 0;
  pMsg = pStart;

  if (vnode < pObj->numOfVnodes) pVgroup = FUNC3(pObj->vload[vnode].vgId);

  if (pVgroup) {
    *pMsg = 0;
    pMsg++;
    pMsg = FUNC2(pMsg, pVgroup, vnode);
    FUNC1("dnode:%s, vnode:%d, vgroup:%d, send create meter msg, code:%d", FUNC5(pObj->privateIp), vnode, pVgroup->vgId, *pMsg);
  } else {
    FUNC1("dnode:%s, vnode:%d, no vgroup info, vgroup:%d", FUNC5(pObj->privateIp), vnode, pObj->vload[vnode].vgId);
    *pMsg = TSDB_CODE_INVALID_VALUE;
    pMsg++;
    *(int32_t *)pMsg = FUNC0(vnode);
    pMsg += sizeof(int32_t);
  }

  msgLen = pMsg - pStart;
  FUNC6(pObj, pStart, msgLen);

  return 0;
}