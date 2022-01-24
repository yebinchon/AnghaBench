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
struct TYPE_13__ {int numOfVnodes; int /*<<< orphan*/  privateIp; TYPE_1__* vload; } ;
struct TYPE_12__ {int vnode; int sid; } ;
struct TYPE_11__ {int /*<<< orphan*/ ** meterList; } ;
struct TYPE_10__ {int vgId; } ;
typedef  TYPE_2__ SVgObj ;
typedef  int /*<<< orphan*/  STabObj ;
typedef  TYPE_3__ SMeterCfgMsg ;
typedef  TYPE_4__ SDnodeObj ;

/* Variables and functions */
 char TSDB_CODE_INVALID_METER_ID ; 
 int /*<<< orphan*/  TSDB_CODE_SERV_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  TSDB_MSG_TYPE_METER_CFG_RSP ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 TYPE_2__* FUNC3 (int) ; 
 char* FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(char *cont, int contLen, SDnodeObj *pObj) {
  char *        pMsg, *pStart;
  int           msgLen = 0;
  STabObj *     pMeter = NULL;
  SMeterCfgMsg *pCfg = (SMeterCfgMsg *)cont;
  SVgObj *      pVgroup;

  int vnode = FUNC0(pCfg->vnode);
  int sid = FUNC0(pCfg->sid);

  pStart = FUNC4(pObj, TSDB_MSG_TYPE_METER_CFG_RSP, 64000);
  if (pStart == NULL) {
    FUNC7(pObj, TSDB_MSG_TYPE_METER_CFG_RSP, TSDB_CODE_SERV_OUT_OF_MEMORY);
    return 0;
  }
  pMsg = pStart;

  if (vnode < pObj->numOfVnodes) {
    int vgId = pObj->vload[vnode].vgId;

    pVgroup = FUNC3(vgId);
    if (pVgroup) pMeter = pVgroup->meterList[sid];
  }

  if (pMeter) {
    *pMsg = 0;  // code
    pMsg++;
    pMsg = FUNC2(pMeter, pMsg, vnode);
  } else {
    FUNC1("dnode:%s, vnode:%d sid:%d, meter not there", FUNC5(pObj->privateIp), vnode, sid);
    *pMsg = TSDB_CODE_INVALID_METER_ID;
    pMsg++;

    *(int32_t *)pMsg = FUNC0(vnode);
    pMsg += sizeof(int32_t);
    *(int32_t *)pMsg = FUNC0(sid);
    pMsg += sizeof(int32_t);
  }

  msgLen = pMsg - pStart;
  FUNC6(pObj, pStart, msgLen);

  return 0;
}