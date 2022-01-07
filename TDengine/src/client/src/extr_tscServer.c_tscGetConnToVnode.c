
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int connInit ;
struct TYPE_25__ {TYPE_2__* vpeerDesc; } ;
struct TYPE_24__ {TYPE_8__* pMeterMeta; int pMetricMeta; } ;
struct TYPE_23__ {int cid; char* peerIp; void* peerPort; TYPE_4__* ahandle; void* shandle; void* peerId; int meterId; scalar_t__ encrypt; scalar_t__ spi; scalar_t__ sid; } ;
struct TYPE_22__ {int vnodeIdx; } ;
struct TYPE_21__ {scalar_t__ retry; scalar_t__ maxRetry; size_t index; scalar_t__ ip; int vnode; int * thandle; TYPE_3__* pTscObj; TYPE_5__ cmd; } ;
struct TYPE_20__ {int user; } ;
struct TYPE_19__ {scalar_t__ ip; int vnode; } ;
struct TYPE_18__ {TYPE_2__* vpeerDesc; } ;
typedef TYPE_1__ SVnodeSidList ;
typedef TYPE_2__ SVPeerDesc ;
typedef TYPE_3__ STscObj ;
typedef TYPE_4__ SSqlObj ;
typedef TYPE_5__ SSqlCmd ;
typedef TYPE_6__ SRpcConnInit ;
typedef TYPE_7__ SMeterMetaInfo ;
typedef TYPE_8__ SMeterMeta ;


 int TSDB_SHELL_VNODE_BITS ;
 int TSDB_VNODES_SUPPORT ;
 scalar_t__ UTIL_METER_IS_METRIC (TYPE_7__*) ;
 void* htonl (int) ;
 int memset (TYPE_6__*,int ,int) ;
 void* pVnodeConn ;
 void* taosGetConnFromCache (int ,scalar_t__,int,int ) ;
 void* taosOpenRpcConn (TYPE_6__*,scalar_t__*) ;
 int tinet_ntoa (char*,scalar_t__) ;
 scalar_t__ tsServerIp ;
 char* tsServerIpStr ;
 void* tsVnodeShellPort ;
 int tscConnCache ;
 int tscError (char*,TYPE_4__*) ;
 TYPE_7__* tscGetMeterMetaInfo (TYPE_5__*,int ) ;
 TYPE_1__* tscGetVnodeSidList (int ,int ) ;
 int tscNumOfThreads ;
 int tscTrace (char*,TYPE_4__*,int,scalar_t__,size_t,int *) ;

void tscGetConnToVnode(SSqlObj *pSql, uint8_t *pCode) {
  char ipstr[40] = {0};
  SVPeerDesc *pVPeersDesc = ((void*)0);
  static int vidIndex = 0;
  STscObj * pTscObj = pSql->pTscObj;

  pSql->thandle = ((void*)0);

  SSqlCmd * pCmd = &pSql->cmd;
  SMeterMetaInfo *pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);

  if (UTIL_METER_IS_METRIC(pMeterMetaInfo)) {
    SVnodeSidList *vnodeList = tscGetVnodeSidList(pMeterMetaInfo->pMetricMeta, pCmd->vnodeIdx);
    if (vnodeList != ((void*)0)) {
      pVPeersDesc = vnodeList->vpeerDesc;
    }
  } else {
    SMeterMeta *pMeta = pMeterMetaInfo->pMeterMeta;
    if (pMeta == ((void*)0)) {
      tscError("%p pMeterMeta is NULL", pSql);
      pSql->retry = pSql->maxRetry;
      return;
    }
    pVPeersDesc = pMeta->vpeerDesc;
  }

  if (pVPeersDesc == ((void*)0)) {
    pSql->retry = pSql->maxRetry;
    tscError("%p pVPeerDesc is NULL", pSql);
  }

  while (pSql->retry < pSql->maxRetry) {
    (pSql->retry)++;
    *pCode = 0;
    void *thandle = taosGetConnFromCache(tscConnCache, tsServerIp, pVPeersDesc[0].vnode, pTscObj->user);

    if (thandle == ((void*)0)) {
      SRpcConnInit connInit;
      memset(&connInit, 0, sizeof(connInit));
      connInit.cid = vidIndex;
      connInit.sid = 0;
      connInit.spi = 0;
      connInit.encrypt = 0;
      connInit.meterId = pSql->pTscObj->user;
      connInit.peerId = htonl((pVPeersDesc[0].vnode << TSDB_SHELL_VNODE_BITS));
      connInit.shandle = pVnodeConn;
      connInit.ahandle = pSql;
      connInit.peerIp = tsServerIpStr;
      connInit.peerPort = tsVnodeShellPort;
      thandle = taosOpenRpcConn(&connInit, pCode);
      vidIndex = (vidIndex + 1) % tscNumOfThreads;
    }

    pSql->thandle = thandle;
    pSql->ip = tsServerIp;
    pSql->vnode = pVPeersDesc[0].vnode;


    break;
  }
}
