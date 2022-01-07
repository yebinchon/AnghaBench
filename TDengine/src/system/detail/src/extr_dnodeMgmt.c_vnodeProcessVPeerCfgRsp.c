
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_4__ {scalar_t__ lastKey; } ;
struct TYPE_3__ {scalar_t__ code; scalar_t__ more; } ;
typedef TYPE_1__ STaosRsp ;
typedef int SMgmtObj ;


 int TSDB_MAX_VNODES ;
 int dError (char*) ;
 int dTrace (char*,int) ;
 int htonl (int ) ;
 TYPE_2__* vnodeList ;
 int vnodeProcessVPeerCfg (scalar_t__,int,int *) ;
 int vnodeRemoveVnode (int) ;

int vnodeProcessVPeerCfgRsp(char *msg, int msgLen, SMgmtObj *pMgmtObj) {
  STaosRsp *pRsp;

  pRsp = (STaosRsp *)msg;

  if (pRsp->code == 0) {
    vnodeProcessVPeerCfg(pRsp->more, msgLen - sizeof(STaosRsp), pMgmtObj);
  } else {
    int32_t *pint = (int32_t *)pRsp->more;
    int vnode = htonl(*pint);
    if (vnode < TSDB_MAX_VNODES && vnodeList[vnode].lastKey != 0) {
      dError("vnode:%d not configured, it shall be empty");
      vnodeRemoveVnode(vnode);
    } else {
      dTrace("vnode:%d is invalid", vnode);
    }
  }

  return 0;
}
