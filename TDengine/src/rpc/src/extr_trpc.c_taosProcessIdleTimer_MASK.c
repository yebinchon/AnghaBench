#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  qhandle; } ;
struct TYPE_9__ {void* signature; int chann; void* pIdleTimer; int rspReceived; int /*<<< orphan*/  ahandle; int /*<<< orphan*/  meterId; int /*<<< orphan*/  sid; TYPE_1__* pServer; } ;
struct TYPE_8__ {TYPE_3__* thandle; int /*<<< orphan*/  ahandle; int /*<<< orphan*/ * msg; int /*<<< orphan*/  fp; } ;
struct TYPE_7__ {int /*<<< orphan*/  label; TYPE_4__* channList; } ;
typedef  TYPE_1__ STaosRpc ;
typedef  TYPE_2__ SSchedMsg ;
typedef  TYPE_3__ SRpcConn ;
typedef  TYPE_4__ SRpcChann ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*,void*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,...) ; 
 int /*<<< orphan*/  taosProcessSchedMsg ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 

void FUNC5(void *param, void *tmrId) {
  SRpcConn *pConn = (SRpcConn *)param;
  if (pConn->signature != param) {
    FUNC2("idle timer pConn Signature:0x%x, pConn:0x%x not matched", pConn->signature, param);
    return;
  }

  STaosRpc * pServer = pConn->pServer;
  SRpcChann *pChann = pServer->channList + pConn->chann;
  if (pConn->pIdleTimer != tmrId) {
    FUNC3("%s cid:%d sid:%d id:%s, idle timer:%p already processed pConn:%p", pServer->label, pConn->chann, pConn->sid,
           pConn->meterId, tmrId, pConn);
    return;
  }

  FUNC0(&pChann->mutex);

  FUNC3("%s cid:%d sid:%d id:%s, close the connection since no activity pConn:%p", pServer->label, pConn->chann,
         pConn->sid, pConn->meterId, pConn);
  if (pConn->rspReceived == 0) {
    pConn->rspReceived = 1;

    SSchedMsg schedMsg;
    schedMsg.fp = taosProcessSchedMsg;
    schedMsg.msg = NULL;
    schedMsg.ahandle = pConn->ahandle;
    schedMsg.thandle = pConn;
    FUNC4(pChann->qhandle, &schedMsg);
  }

  FUNC1(&pChann->mutex);
}