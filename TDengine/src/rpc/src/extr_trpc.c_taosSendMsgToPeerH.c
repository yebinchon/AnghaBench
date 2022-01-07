
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef void* int32_t ;
struct TYPE_16__ {int msgLen; void* ahandle; struct TYPE_16__* next; } ;
struct TYPE_15__ {int mutex; int tmrCtrl; } ;
struct TYPE_14__ {int chann; char* pRspMsg; int rspMsgLen; int outType; int pTimer; void* ahandle; scalar_t__ rspReceived; TYPE_6__* pMsgNode; int outTranId; int meterId; int sid; TYPE_6__* pHead; TYPE_6__* pTail; int inTranId; scalar_t__ inType; int secret; scalar_t__ spi; scalar_t__ localPort; TYPE_1__* pServer; struct TYPE_14__* signature; } ;
struct TYPE_13__ {int auth; scalar_t__ timeStamp; } ;
struct TYPE_12__ {int msgType; scalar_t__* content; int tranId; void* msgLen; scalar_t__ spi; scalar_t__ port; } ;
struct TYPE_11__ {int label; TYPE_5__* channList; } ;
typedef TYPE_1__ STaosRpc ;
typedef TYPE_2__ STaosHeader ;
typedef TYPE_3__ STaosDigest ;
typedef TYPE_4__ SRpcConn ;
typedef TYPE_5__ SRpcChann ;
typedef TYPE_6__ SMsgNode ;


 scalar_t__ TSDB_AUTH_LEN ;
 scalar_t__ TSDB_CODE_ACTION_IN_PROGRESS ;
 int assert (int ) ;
 scalar_t__ htonl (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int tError (char*,int ,int,int ,int ,TYPE_4__*) ;
 int tTrace (char*,int ,int,int ,int ,int ,TYPE_4__*) ;
 int taosBuildAuthHeader (int*,scalar_t__,int ,int ) ;
 int taosGetTimestampSec () ;
 int * taosMsg ;
 int taosProcessTaosTimer ;
 int taosSendDataToPeer (TYPE_4__*,char*,int) ;
 int taosTmrReset (int ,int ,TYPE_4__*,int ,int *) ;
 int tfree (char*) ;
 int tsRpcTimer ;

int taosSendMsgToPeerH(void *thandle, char *pCont, int contLen, void *ahandle) {
  STaosHeader *pHeader;
  SMsgNode * pMsgNode;
  char * msg;
  int msgLen = 0;
  SRpcConn * pConn = (SRpcConn *)thandle;
  STaosRpc * pServer;
  SRpcChann * pChann;
  uint8_t msgType;

  if (pConn == ((void*)0)) return -1;
  if (pConn->signature != pConn) return -1;

  pServer = pConn->pServer;
  pChann = pServer->channList + pConn->chann;
  pHeader = (STaosHeader *)(pCont - sizeof(STaosHeader));
  msg = (char *)pHeader;
  msgLen = contLen + (int32_t)sizeof(STaosHeader);

  if ((pHeader->msgType & 1) == 0 && pConn->localPort) pHeader->port = pConn->localPort;

  if (pConn->spi) {

    pHeader->spi = pConn->spi;
    STaosDigest *pDigest = (STaosDigest *)(pCont + contLen);
    pDigest->timeStamp = htonl(taosGetTimestampSec());
    msgLen += sizeof(STaosDigest);
    pHeader->msgLen = (int32_t)htonl((uint32_t)msgLen);
    taosBuildAuthHeader((uint8_t *)pHeader, msgLen - TSDB_AUTH_LEN, pDigest->auth, pConn->secret);
  } else {
    pHeader->msgLen = (int32_t)htonl((uint32_t)msgLen);
  }

  pthread_mutex_lock(&pChann->mutex);
  msgType = pHeader->msgType;

  if ((msgType & 1) == 0) {

    pConn->inType = 0;
    tfree(pConn->pRspMsg);
    pConn->pRspMsg = msg;
    pConn->rspMsgLen = msgLen;

    if (pHeader->content[0] == TSDB_CODE_ACTION_IN_PROGRESS) pConn->inTranId--;

  } else {

    pMsgNode = (SMsgNode *)(pCont - sizeof(STaosHeader) - sizeof(SMsgNode));
    pMsgNode->msgLen = msgLen;
    pMsgNode->next = ((void*)0);
    pMsgNode->ahandle = ahandle;

    if (pConn->outType) {
      if (pConn->pTail) {
        pConn->pTail->next = pMsgNode;
        pConn->pTail = pMsgNode;
      } else {
        pConn->pTail = pMsgNode;
        pConn->pHead = pMsgNode;
      }

      tTrace("%s cid:%d sid:%d id:%s, msg:%s is put into queue pConn:%p", pServer->label, pConn->chann, pConn->sid,
             pConn->meterId, taosMsg[msgType], pConn);
      msgLen = 0;

    } else {
      assert(pConn->pMsgNode == ((void*)0));
      if (pConn->pMsgNode) {
        tError("%s cid:%d sid:%d id:%s, bug, there shall be no pengding req pConn:%p", pServer->label, pConn->chann,
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
    taosSendDataToPeer(pConn, (char *)pHeader, msgLen);
    if (msgType & 1U) {
      taosTmrReset(taosProcessTaosTimer, tsRpcTimer, pConn, pChann->tmrCtrl, &pConn->pTimer);
    }
  }

  pthread_mutex_unlock(&pChann->mutex);

  return contLen;
}
