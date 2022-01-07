
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int msgType; } ;
struct TYPE_10__ {scalar_t__ signature; void* ahandle; TYPE_1__* pServer; } ;
struct TYPE_9__ {scalar_t__ thandle; int * msg; int ahandle; } ;
struct TYPE_8__ {void* (* fp ) (int *,int ,scalar_t__) ;} ;
typedef TYPE_1__ STaosRpc ;
typedef int STaosHeader ;
typedef TYPE_2__ SSchedMsg ;
typedef TYPE_3__ SRpcConn ;
typedef TYPE_4__ SIntMsg ;


 int free (int *) ;
 void* stub1 (int *,int ,scalar_t__) ;
 int taosCloseRpcConn (TYPE_3__*) ;
 int taosProcessResponse (TYPE_3__*) ;

void taosProcessSchedMsg(SSchedMsg *pMsg) {
  SIntMsg * pHeader = (SIntMsg *)pMsg->msg;
  SRpcConn *pConn = (SRpcConn *)pMsg->thandle;
  if (pConn == ((void*)0) || pConn->signature != pMsg->thandle || pConn->pServer == ((void*)0)) return;
  STaosRpc *pRpc = pConn->pServer;

  void *ahandle = (*(pRpc->fp))(pMsg->msg, pMsg->ahandle, pMsg->thandle);

  if (ahandle == ((void*)0) || pMsg->msg == ((void*)0)) {
    taosCloseRpcConn(pConn);
  } else {
    pConn->ahandle = ahandle;
    if (pHeader && ((pHeader->msgType & 1) == 0)) taosProcessResponse(pConn);
  }

  if (pMsg->msg) free(pMsg->msg - sizeof(STaosHeader) + sizeof(SIntMsg));
}
