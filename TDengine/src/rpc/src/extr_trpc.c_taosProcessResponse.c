
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int msgLen; scalar_t__ ahandle; struct TYPE_15__* next; } ;
struct TYPE_14__ {int mutex; int tmrCtrl; } ;
struct TYPE_13__ {int chann; int pTimer; int * pTail; TYPE_5__* pHead; int meterId; int sid; int outTranId; int outType; scalar_t__ ahandle; TYPE_5__* pMsgNode; scalar_t__ rspReceived; struct TYPE_13__* signature; TYPE_1__* pServer; } ;
struct TYPE_12__ {int tranId; int msgType; } ;
struct TYPE_11__ {scalar_t__ noFree; int label; TYPE_4__* channList; } ;
typedef TYPE_1__ STaosRpc ;
typedef TYPE_2__ STaosHeader ;
typedef TYPE_3__ SRpcConn ;
typedef TYPE_4__ SRpcChann ;
typedef TYPE_5__ SMsgNode ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int tError (char*,int ,int,int ,int ,int,TYPE_3__*) ;
 int taosProcessTaosTimer ;
 int taosSendDataToPeer (TYPE_3__*,char*,int) ;
 int taosTmrReset (int ,int ,TYPE_3__*,int ,int *) ;
 int tfree (TYPE_5__*) ;
 int tsRpcTimer ;

void taosProcessResponse(SRpcConn *pConn) {
  STaosHeader *pHeader;
  char * msg = ((void*)0);
  int msgLen = 0;

  if (pConn == ((void*)0)) return;
  STaosRpc *pServer = pConn->pServer;
  if (pConn->signature != pConn || pServer == ((void*)0)) return;
  SRpcChann *pChann = pServer->channList + pConn->chann;

  pthread_mutex_lock(&pChann->mutex);

  pConn->outType = 0;
  pConn->rspReceived = 0;
  if (pServer->noFree == 0) tfree(pConn->pMsgNode);
  pConn->pMsgNode = ((void*)0);

  if (pConn->pHead) {
    SMsgNode *pMsgNode = pConn->pHead;

    if (pMsgNode->msgLen >= sizeof(STaosHeader)) {
      pConn->pMsgNode = pMsgNode;
      pConn->pHead = pMsgNode->next;
      if (pMsgNode->ahandle) pConn->ahandle = pMsgNode->ahandle;

      pHeader = (STaosHeader *)((char *)pMsgNode + sizeof(SMsgNode));
      pConn->outType = pHeader->msgType;
      pConn->outTranId = pHeader->tranId;

      msg = (char *)pHeader;
      msgLen = pMsgNode->msgLen;

    } else {
      tError("%s cid:%d sid:%d id:%s, invalid msgLen:%d pConn:%p", pServer->label, pConn->chann, pConn->sid,
             pConn->meterId, pMsgNode->msgLen, pConn);
      pConn->pHead = ((void*)0);
    }

    if (pConn->pHead == ((void*)0)) pConn->pTail = ((void*)0);
  }

  if (msg) {
    taosSendDataToPeer(pConn, msg, msgLen);
    taosTmrReset(taosProcessTaosTimer, tsRpcTimer, pConn, pChann->tmrCtrl, &pConn->pTimer);
  }

  pthread_mutex_unlock(&pChann->mutex);

}
