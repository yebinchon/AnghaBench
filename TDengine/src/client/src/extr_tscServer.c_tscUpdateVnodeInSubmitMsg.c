
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* vpeerDesc; } ;
struct TYPE_12__ {TYPE_5__* pMeterMeta; } ;
struct TYPE_11__ {int vnode; } ;
struct TYPE_10__ {size_t index; int cmd; } ;
struct TYPE_9__ {int vnode; } ;
typedef TYPE_2__ SSqlObj ;
typedef TYPE_3__ SShellSubmitMsg ;
typedef TYPE_4__ SMeterMetaInfo ;
typedef TYPE_5__ SMeterMeta ;


 int htons (int ) ;
 int tsRpcHeadSize ;
 TYPE_4__* tscGetMeterMetaInfo (int *,int ) ;
 int tscTrace (char*,TYPE_2__*,int ) ;

void tscUpdateVnodeInSubmitMsg(SSqlObj *pSql, char *buf) {
  SShellSubmitMsg *pShellMsg;
  char * pMsg;
  SMeterMetaInfo * pMeterMetaInfo = tscGetMeterMetaInfo(&pSql->cmd, 0);

  SMeterMeta *pMeterMeta = pMeterMetaInfo->pMeterMeta;

  pMsg = buf + tsRpcHeadSize;

  pShellMsg = (SShellSubmitMsg *)pMsg;
  pShellMsg->vnode = htons(pMeterMeta->vpeerDesc[pSql->index].vnode);
  tscTrace("%p update submit msg vnode:%d", pSql, htons(pShellMsg->vnode));
}
