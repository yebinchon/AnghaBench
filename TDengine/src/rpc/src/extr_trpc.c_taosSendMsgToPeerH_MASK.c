#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  void* int32_t ;
struct TYPE_16__ {int msgLen; void* ahandle; struct TYPE_16__* next; } ;
struct TYPE_15__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  tmrCtrl; } ;
struct TYPE_14__ {int chann; char* pRspMsg; int rspMsgLen; int outType; int /*<<< orphan*/  pTimer; void* ahandle; scalar_t__ rspReceived; TYPE_6__* pMsgNode; int /*<<< orphan*/  outTranId; int /*<<< orphan*/  meterId; int /*<<< orphan*/  sid; TYPE_6__* pHead; TYPE_6__* pTail; int /*<<< orphan*/  inTranId; scalar_t__ inType; int /*<<< orphan*/  secret; scalar_t__ spi; scalar_t__ localPort; TYPE_1__* pServer; struct TYPE_14__* signature; } ;
struct TYPE_13__ {int /*<<< orphan*/  auth; scalar_t__ timeStamp; } ;
struct TYPE_12__ {int msgType; scalar_t__* content; int /*<<< orphan*/  tranId; void* msgLen; scalar_t__ spi; scalar_t__ port; } ;
struct TYPE_11__ {int /*<<< orphan*/  label; TYPE_5__* channList; } ;
typedef  TYPE_1__ STaosRpc ;
typedef  TYPE_2__ STaosHeader ;
typedef  TYPE_3__ STaosDigest ;
typedef  TYPE_4__ SRpcConn ;
typedef  TYPE_5__ SRpcChann ;
typedef  TYPE_6__ SMsgNode ;

/* Variables and functions */
 scalar_t__ TSDB_AUTH_LEN ; 
 scalar_t__ TSDB_CODE_ACTION_IN_PROGRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/ * taosMsg ; 
 int /*<<< orphan*/  taosProcessTaosTimer ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  tsRpcTimer ; 

int FUNC11(void *thandle, char *pCont, int contLen, void *ahandle) {
  STaosHeader *pHeader;
  SMsgNode *   pMsgNode;
  char *       msg;
  int          msgLen = 0;
  SRpcConn *   pConn = (SRpcConn *)thandle;
  STaosRpc *   pServer;
  SRpcChann *  pChann;
  uint8_t      msgType;

  if (pConn == NULL) return -1;
  if (pConn->signature != pConn) return -1;

  pServer = pConn->pServer;
  pChann = pServer->channList + pConn->chann;
  pHeader = (STaosHeader *)(pCont - sizeof(STaosHeader));
  msg = (char *)pHeader;
  msgLen = contLen + (int32_t)sizeof(STaosHeader);

  if ((pHeader->msgType & 1) == 0 && pConn->localPort) pHeader->port = pConn->localPort;

  if (pConn->spi) {
    // add auth part
    pHeader->spi = pConn->spi;
    STaosDigest *pDigest = (STaosDigest *)(pCont + contLen);
    pDigest->timeStamp = FUNC1(FUNC7());
    msgLen += sizeof(STaosDigest);
    pHeader->msgLen = (int32_t)FUNC1((uint32_t)msgLen);
    FUNC6((uint8_t *)pHeader, msgLen - TSDB_AUTH_LEN, pDigest->auth, pConn->secret);
  } else {
    pHeader->msgLen = (int32_t)FUNC1((uint32_t)msgLen);
  }

  FUNC2(&pChann->mutex);
  msgType = pHeader->msgType;

  if ((msgType & 1) == 0) {
    // response
    pConn->inType = 0;
    FUNC10(pConn->pRspMsg);
    pConn->pRspMsg = msg;
    pConn->rspMsgLen = msgLen;

    if (pHeader->content[0] == TSDB_CODE_ACTION_IN_PROGRESS) pConn->inTranId--;

  } else {
    // request
    pMsgNode = (SMsgNode *)(pCont - sizeof(STaosHeader) - sizeof(SMsgNode));
    pMsgNode->msgLen = msgLen;
    pMsgNode->next = NULL;
    pMsgNode->ahandle = ahandle;

    if (pConn->outType) {
      if (pConn->pTail) {
        pConn->pTail->next = pMsgNode;
        pConn->pTail = pMsgNode;
      } else {
        pConn->pTail = pMsgNode;
        pConn->pHead = pMsgNode;
      }

      FUNC5("%s cid:%d sid:%d id:%s, msg:%s is put into queue pConn:%p", pServer->label, pConn->chann, pConn->sid,
             pConn->meterId, taosMsg[msgType], pConn);
      msgLen = 0;

    } else {
      FUNC0(pConn->pMsgNode == NULL);
      if (pConn->pMsgNode) {
        FUNC4("%s cid:%d sid:%d id:%s, bug, there shall be no pengding req pConn:%p", pServer->label, pConn->chann,
               pConn->sid, pConn->meterId, pConn);
      }

      pConn->outType = msgType;
      pConn->outTranId = pHeader->tranId;
      pConn->pMsgNode = pMsgNode;
      pConn->rspReceived = 0;
      if (pMsgNode->ahandle) pConn->ahandle = pMsgNode->ahandle;
    }
  }

  if (msgLen) {
    FUNC8(pConn, (char *)pHeader, msgLen);
    if (msgType & 1U) {
      FUNC9(taosProcessTaosTimer, tsRpcTimer, pConn, pChann->tmrCtrl, &pConn->pTimer);
    }
  }

  FUNC3(&pChann->mutex);

  return contLen;
}