
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_18__ {int numOfIps; int * ip; int * ipstr; } ;
struct TYPE_16__ {int numOfIps; int * ip; } ;
struct TYPE_17__ {scalar_t__ streamId; scalar_t__ queryId; scalar_t__ killConnection; TYPE_4__ ipList; } ;
struct TYPE_14__ {scalar_t__ pRsp; } ;
struct TYPE_15__ {TYPE_2__ res; } ;
struct TYPE_13__ {int pTimer; TYPE_3__* pHb; struct TYPE_13__* signature; } ;
typedef int TAOS_RES ;
typedef TYPE_1__ STscObj ;
typedef TYPE_2__ SSqlRes ;
typedef TYPE_3__ SSqlObj ;
typedef TYPE_4__ SIpList ;
typedef TYPE_5__ SHeartBeatRsp ;


 scalar_t__ memcmp (int *,int *,int) ;
 int taosTmrReset (int ,int,TYPE_1__*,int ,int *) ;
 int tinet_ntoa (int ,int ) ;
 int tsShellActivityTimer ;
 int tscError (char*,TYPE_1__*,TYPE_1__*) ;
 int tscKillConnection (TYPE_1__*) ;
 int tscKillQuery (TYPE_1__*,scalar_t__) ;
 int tscKillStream (TYPE_1__*,scalar_t__) ;
 TYPE_6__ tscMgmtIpList ;
 int tscPrintMgmtIp () ;
 int tscProcessActivityTimer ;
 int tscTmr ;
 int tscTrace (char*,...) ;

void tscProcessHeartBeatRsp(void *param, TAOS_RES *tres, int code) {
  STscObj *pObj = (STscObj *)param;
  if (pObj == ((void*)0)) return;
  if (pObj != pObj->signature) {
    tscError("heart beat msg, pObj:%p, signature:%p invalid", pObj, pObj->signature);
    return;
  }

  SSqlObj *pSql = pObj->pHb;
  SSqlRes *pRes = &pSql->res;

  if (code == 0) {
    SHeartBeatRsp *pRsp = (SHeartBeatRsp *)pRes->pRsp;
    if (pRsp->killConnection) {
      tscKillConnection(pObj);
    } else {
      if (pRsp->queryId) tscKillQuery(pObj, pRsp->queryId);
      if (pRsp->streamId) tscKillStream(pObj, pRsp->streamId);
    }
  } else {
    tscTrace("heart beat failed, code:%d", code);
  }

  taosTmrReset(tscProcessActivityTimer, tsShellActivityTimer * 500, pObj, tscTmr, &pObj->pTimer);
}
