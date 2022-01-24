#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ thandle; TYPE_1__* vload; } ;
struct TYPE_13__ {int numOfVnodes; TYPE_2__* vnodeGid; int /*<<< orphan*/  vgId; } ;
struct TYPE_12__ {size_t vnode; int /*<<< orphan*/  ip; } ;
struct TYPE_11__ {int /*<<< orphan*/  vgId; } ;
typedef  TYPE_3__ SVgObj ;
typedef  TYPE_4__ SDnodeObj ;

/* Variables and functions */
 int /*<<< orphan*/  TSDB_MSG_TYPE_VPEERS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*,TYPE_3__*,size_t) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 char* FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*,int) ; 

int FUNC7(SVgObj *pVgroup) {
  SDnodeObj *pDnode;
  char *     pMsg, *pStart;
  int        msgLen = 0;

  for (int i = 0; i < pVgroup->numOfVnodes; ++i) {
    pDnode = FUNC2(pVgroup->vnodeGid[i].ip);
    if (pDnode == NULL) {
      FUNC0("dnode:%s not there", FUNC5(pVgroup->vnodeGid[i].ip));
      continue;
    }

    pDnode->vload[pVgroup->vnodeGid[i].vnode].vgId = pVgroup->vgId;
    FUNC3(pDnode);

    if (pDnode->thandle && pVgroup->numOfVnodes >= 1) {
      pStart = FUNC4(pDnode, TSDB_MSG_TYPE_VPEERS);
      if (pStart == NULL) continue;
      pMsg = FUNC1(pStart, pVgroup, pVgroup->vnodeGid[i].vnode);
      msgLen = pMsg - pStart;

      FUNC6(pDnode, pStart, msgLen);
    }
  }

  return 0;
}