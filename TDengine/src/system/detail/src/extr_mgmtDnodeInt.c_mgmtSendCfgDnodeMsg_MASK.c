#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/  config; int /*<<< orphan*/  ip; } ;
struct TYPE_6__ {int /*<<< orphan*/  thandle; int /*<<< orphan*/  privateIp; } ;
typedef  TYPE_1__ SDnodeObj ;
typedef  TYPE_2__ SCfgMsg ;

/* Variables and functions */
 int TSDB_CODE_NODE_OFFLINE ; 
 int TSDB_CODE_NOT_CONFIGURED ; 
 int /*<<< orphan*/  TSDB_MSG_TYPE_CFG_PNODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,int) ; 

int FUNC9(char *cont) {
  char *     pMsg, *pStart;
  int        msgLen = 0;
  SDnodeObj *pDnode;
  SCfgMsg *  pCfg = (SCfgMsg *)cont;
  uint32_t   ip;

  ip = FUNC0(pCfg->ip);
  pDnode = FUNC5(ip);
  if (pDnode == NULL) {
    FUNC1("dnode ip:%s not configured", pCfg->ip);
    return TSDB_CODE_NOT_CONFIGURED;
  }

  FUNC2("dnode:%s, dynamic option received, content:%s", FUNC7(pDnode->privateIp), pCfg->config);
  int code = FUNC4(pDnode, pCfg->config);
  if (code != -1) {
    return code;
  }

  pStart = FUNC6(pDnode->thandle, TSDB_MSG_TYPE_CFG_PNODE);
  if (pStart == NULL) return TSDB_CODE_NODE_OFFLINE;
  pMsg = pStart;

  FUNC3(pMsg, cont, sizeof(SCfgMsg));
  pMsg += sizeof(SCfgMsg);

  msgLen = pMsg - pStart;
  FUNC8(pDnode, pStart, msgLen);

  return 0;
}