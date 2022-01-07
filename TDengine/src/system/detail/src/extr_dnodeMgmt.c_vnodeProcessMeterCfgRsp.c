
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_2__ {scalar_t__ more; } ;
typedef TYPE_1__ STaosRsp ;
typedef int SMgmtObj ;


 int dError (char*,int,int,int) ;
 int dTrace (char*,int,int,int) ;
 int htonl (int ) ;
 int vnodeProcessCreateMeterMsg (char*,int) ;
 int vnodeRemoveMeterObj (int,int) ;

int vnodeProcessMeterCfgRsp(char *pMsg, int msgLen, SMgmtObj *pObj) {
  int code = *pMsg;

  if (code == 0) {
    vnodeProcessCreateMeterMsg(pMsg + 1, msgLen - 1);
  } else {
    STaosRsp *pRsp;
    pRsp = (STaosRsp *)pMsg;
    int32_t *pint = (int32_t *)pRsp->more;
    int vnode = htonl(*pint);
    int sid = htonl(*(pint + 1));
    dError("vid:%d, sid:%d, code:%d, meter is not configured, remove it", vnode, sid, code);
    int ret = vnodeRemoveMeterObj(vnode, sid);
    dTrace("vid:%d, sid:%d, meter delete ret:%d", vnode, sid, ret);
  }

  return 0;
}
