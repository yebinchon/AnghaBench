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
struct TYPE_2__ {int /*<<< orphan*/  config; } ;
typedef  int /*<<< orphan*/  SMgmtObj ;
typedef  TYPE_1__ SCfgMsg ;

/* Variables and functions */
 int /*<<< orphan*/  TSDB_MSG_TYPE_CFG_PNODE_RSP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(char *cont, int contLen, SMgmtObj *pMgmtObj) {
  SCfgMsg *pCfg = (SCfgMsg *)cont;

  int code = FUNC1(pCfg->config);

  FUNC0(pMgmtObj, TSDB_MSG_TYPE_CFG_PNODE_RSP, code);

  return 0;
}