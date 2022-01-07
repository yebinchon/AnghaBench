
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int mutex; int qhandle; } ;
struct TYPE_10__ {int chann; int rspReceived; int ahandle; scalar_t__ outType; int meterId; int sid; TYPE_1__* pServer; } ;
struct TYPE_9__ {TYPE_3__* thandle; int ahandle; int * msg; int fp; } ;
struct TYPE_8__ {int label; TYPE_4__* channList; } ;
typedef TYPE_1__ STaosRpc ;
typedef TYPE_2__ SSchedMsg ;
typedef TYPE_3__ SRpcConn ;
typedef TYPE_4__ SRpcChann ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int tTrace (char*,int ,int,int ,int ,TYPE_3__*) ;
 int taosCloseRpcConn (TYPE_3__*) ;
 int taosProcessSchedMsg ;
 int taosScheduleTask (int ,TYPE_2__*) ;

void taosStopRpcConn(void *thandle) {
  SRpcConn * pConn = (SRpcConn *)thandle;
  STaosRpc * pServer = pConn->pServer;
  SRpcChann *pChann = pServer->channList + pConn->chann;

  tTrace("%s cid:%d sid:%d id:%s, stop the connection pConn:%p", pServer->label, pConn->chann, pConn->sid,
         pConn->meterId, pConn);

  pthread_mutex_lock(&pChann->mutex);

  if (pConn->outType) {
    pConn->rspReceived = 1;
    SSchedMsg schedMsg;
    schedMsg.fp = taosProcessSchedMsg;
    schedMsg.msg = ((void*)0);
    schedMsg.ahandle = pConn->ahandle;
    schedMsg.thandle = pConn;
    pthread_mutex_unlock(&pChann->mutex);

    taosScheduleTask(pChann->qhandle, &schedMsg);
  } else {
    pthread_mutex_unlock(&pChann->mutex);
    taosCloseRpcConn(pConn);
  }
}
