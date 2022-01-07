
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int order; } ;
struct TYPE_17__ {char* payload; int msgType; int count; TYPE_1__ order; } ;
struct TYPE_16__ {size_t index; TYPE_2__* vpeerDesc; } ;
struct TYPE_15__ {TYPE_6__* pMeterMeta; } ;
struct TYPE_14__ {int vnode; int numOfSid; int import; } ;
struct TYPE_13__ {TYPE_9__ cmd; } ;
struct TYPE_12__ {int vnode; } ;
typedef TYPE_3__ SSqlObj ;
typedef TYPE_4__ SShellSubmitMsg ;
typedef TYPE_5__ SMeterMetaInfo ;
typedef TYPE_6__ SMeterMeta ;


 int TSDB_MSG_TYPE_SUBMIT ;
 int htonl (int ) ;
 int htons (int ) ;
 int tsRpcHeadSize ;
 TYPE_5__* tscGetMeterMetaInfo (TYPE_9__*,int ) ;
 int tscTrace (char*,TYPE_3__*,int ) ;

int tscBuildSubmitMsg(SSqlObj *pSql) {
  SShellSubmitMsg *pShellMsg;
  char * pMsg, *pStart;
  int msgLen = 0;

  SMeterMetaInfo *pMeterMetaInfo = tscGetMeterMetaInfo(&pSql->cmd, 0);
  SMeterMeta * pMeterMeta = pMeterMetaInfo->pMeterMeta;

  pStart = pSql->cmd.payload + tsRpcHeadSize;
  pMsg = pStart;

  pShellMsg = (SShellSubmitMsg *)pMsg;
  pShellMsg->import = pSql->cmd.order.order;
  pShellMsg->vnode = htons(pMeterMeta->vpeerDesc[pMeterMeta->index].vnode);
  pShellMsg->numOfSid = htonl(pSql->cmd.count);


  pSql->cmd.msgType = TSDB_MSG_TYPE_SUBMIT;
  tscTrace("%p update submit msg vnode:%d", pSql, htons(pShellMsg->vnode));

  return msgLen;
}
