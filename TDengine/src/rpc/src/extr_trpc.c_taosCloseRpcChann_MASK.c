#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * signature; } ;
struct TYPE_6__ {int sessions; int /*<<< orphan*/  mutex; TYPE_3__* connList; int /*<<< orphan*/  idPool; int /*<<< orphan*/  tmrCtrl; int /*<<< orphan*/  hash; } ;
struct TYPE_5__ {int numOfChanns; TYPE_2__* channList; int /*<<< orphan*/  label; } ;
typedef  TYPE_1__ STaosRpc ;
typedef  TYPE_2__ SRpcChann ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 

void FUNC8(void *handle, int cid) {
  STaosRpc * pServer = (STaosRpc *)handle;
  SRpcChann *pChann;

  if (pServer == NULL) return;
  if (cid >= pServer->numOfChanns || cid < 0) {
    FUNC2("%s cid:%d, chann is out of range, max:%d", pServer->label, cid, pServer->numOfChanns);
    return;
  }

  pChann = pServer->channList + cid;

  for (int i = 0; i < pChann->sessions; ++i) {
    if (pChann->connList[i].signature != NULL) {
      FUNC4((void *)(pChann->connList + i));
    }
  }

  FUNC3(pChann->hash);
  FUNC6(pChann->tmrCtrl);
  FUNC5(pChann->idPool);
  FUNC7(pChann->connList);
  FUNC1(&pChann->mutex);

  FUNC0(pChann, 0, sizeof(SRpcChann));
}