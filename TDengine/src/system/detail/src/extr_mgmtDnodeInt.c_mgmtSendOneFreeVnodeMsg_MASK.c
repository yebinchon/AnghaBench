#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * thandle; } ;
struct TYPE_9__ {int /*<<< orphan*/  vnode; } ;
struct TYPE_8__ {int /*<<< orphan*/  vnode; int /*<<< orphan*/  ip; } ;
typedef  TYPE_1__ SVnodeGid ;
typedef  TYPE_2__ SFreeVnodeMsg ;
typedef  TYPE_3__ SDnodeObj ;

/* Variables and functions */
 int /*<<< orphan*/  TSDB_MSG_TYPE_FREE_VNODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,int) ; 

int FUNC7(SVnodeGid *pVnodeGid) {
  SFreeVnodeMsg *pFreeVnode;
  char *         pMsg, *pStart;
  int            msgLen = 0;
  SDnodeObj *    pDnode;

  pDnode = FUNC3(pVnodeGid->ip);
  if (pDnode == NULL) {
    FUNC1("dnode:%s not there", FUNC5(pVnodeGid->ip));
    return -1;
  }

  if (pDnode->thandle == NULL) {
    FUNC2("dnode:%s offline, failed to send Vpeer msg", FUNC5(pVnodeGid->ip));
    return -1;
  }

  pStart = FUNC4(pDnode, TSDB_MSG_TYPE_FREE_VNODE);
  if (pStart == NULL) return -1;
  pMsg = pStart;

  pFreeVnode = (SFreeVnodeMsg *)pMsg;
  pFreeVnode->vnode = FUNC0(pVnodeGid->vnode);

  pMsg += sizeof(SFreeVnodeMsg);

  msgLen = pMsg - pStart;
  FUNC6(pDnode, pStart, msgLen);

  return 0;
}