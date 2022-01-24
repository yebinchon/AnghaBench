#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int vnode; scalar_t__ sqlLen; int /*<<< orphan*/  meterId; int /*<<< orphan*/  sid; int /*<<< orphan*/ * pStream; } ;
struct TYPE_5__ {scalar_t__ numOfStreams; int /*<<< orphan*/ * dbConn; } ;
typedef  TYPE_1__ SVnodeObj ;
typedef  TYPE_2__ SMeterObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* vnodeList ; 

void FUNC3(SMeterObj *pObj) {
  SVnodeObj *pVnode = vnodeList + pObj->vnode;
  if (pObj->sqlLen <= 0) return;

  if (pObj->pStream) {
    FUNC2(pObj->pStream);
    pVnode->numOfStreams--;
  }

  pObj->pStream = NULL;
  if (pVnode->numOfStreams == 0) {
    FUNC1(pVnode->dbConn);
    pVnode->dbConn = NULL;
  }

  FUNC0("vid:%d sid:%d id:%d stream is removed", pObj->vnode, pObj->sid, pObj->meterId);
}