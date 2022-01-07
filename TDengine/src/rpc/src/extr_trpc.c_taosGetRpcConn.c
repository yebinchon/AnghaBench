
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int int16_t ;
struct TYPE_10__ {int sessions; int hash; int idPool; TYPE_2__* connList; } ;
struct TYPE_9__ {int sid; int chann; int meterId; int localPort; int ckey; int secret; int encrypt; int spi; int ownId; scalar_t__ tranId; TYPE_1__* pServer; struct TYPE_9__* signature; } ;
struct TYPE_8__ {scalar_t__ idMgmt; int bits; int (* afp ) (char*,int *,int *,int ,int ) ;scalar_t__ type; int numOfThreads; int index; int label; scalar_t__ localPort; TYPE_3__* channList; } ;
typedef TYPE_1__ STaosRpc ;
typedef TYPE_2__ SRpcConn ;
typedef TYPE_3__ SRpcChann ;


 scalar_t__ TAOS_CONN_UDPC ;
 scalar_t__ TAOS_CONN_UDPS ;
 scalar_t__ TAOS_ID_FREE ;
 int TSDB_CODE_INVALID_VALUE ;
 int TSDB_CODE_MAX_SESSIONS ;
 int TSDB_CODE_MISMATCHED_METER_ID ;
 int TSDB_CODE_SUCCESS ;
 int TSDB_CODE_UNEXPECTED_RESPONSE ;
 int htonl (int ) ;
 scalar_t__ memcmp (int ,char*,int ) ;
 int memcpy (int ,char*,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int rand () ;
 int stub1 (char*,int *,int *,int ,int ) ;
 int tError (char*,int ,int,int) ;
 int tListLen (int ) ;
 int tTrace (char*,int ,int,int,char*,...) ;
 int tWarn (char*,int ,int,int,int ,TYPE_2__*) ;
 int taosAddStrHash (int ,char*,char*) ;
 int taosAllocateId (int ) ;
 int taosFreeId (int ,int) ;
 scalar_t__ taosGetStrHashData (int ,char*) ;
 int taosIdPoolNumOfUsed (int ) ;

int taosGetRpcConn(int chann, int sid, char *meterId, STaosRpc *pServer, SRpcConn **ppConn, char req, char *hashstr) {
  SRpcConn * pConn = ((void*)0);
  SRpcChann *pChann;

  if (pServer == ((void*)0)) return -1;
  pChann = pServer->channList + chann;

  if (pServer->idMgmt == TAOS_ID_FREE) {
    if (sid == 0) {
      if (req) {
        int osid = sid;
        SRpcConn **ppConn = (SRpcConn **)taosGetStrHashData(pChann->hash, hashstr);
        if (ppConn) pConn = *ppConn;
        if (pConn == ((void*)0)) {
          sid = taosAllocateId(pChann->idPool);
          if (sid <= 0) {
            tError("%s cid:%d, maximum number of sessions:%d is reached", pServer->label, chann, pChann->sessions);
            return TSDB_CODE_MAX_SESSIONS;
          } else {
            tTrace("%s cid:%d sid:%d, ID allocated, used:%d, old id:%d", pServer->label, chann, sid,
                   taosIdPoolNumOfUsed(pChann->idPool), osid);
          }
        } else {
          sid = pConn->sid;
          tTrace("%s cid:%d sid:%d id:%s, session is already there", pServer->label, pConn->chann, pConn->sid,
                 pConn->meterId);
        }
      } else {
        return TSDB_CODE_UNEXPECTED_RESPONSE;
      }
    } else {
      if (pChann->connList[sid].signature == ((void*)0)) {
        tError("%s cid:%d, sid:%d session is already released", pServer->label, chann, sid);
        return TSDB_CODE_INVALID_VALUE;
      }
    }
  }

  pConn = pChann->connList + sid;
  if (pChann == ((void*)0) || pChann->connList == ((void*)0)) {
    tTrace("%s cid:%d sid:%d, connlist is null, received:%s", pServer->label, chann, sid, meterId);
    return TSDB_CODE_MISMATCHED_METER_ID;
  }

  if (pConn->signature == ((void*)0)) {
    memset(pConn, 0, sizeof(SRpcConn));
    pConn->signature = pConn;
    memcpy(pConn->meterId, meterId, tListLen(pConn->meterId));
    pConn->pServer = pServer;
    pConn->chann = chann;
    pConn->sid = sid;
    pConn->tranId = (uint16_t)(rand() & 0xFFFF);
    pConn->ownId = htonl((uint32_t)((pConn->chann << pServer->bits) + pConn->sid));
    if (pServer->afp) {
      int ret = (*pServer->afp)(meterId, &pConn->spi, &pConn->encrypt, pConn->secret, pConn->ckey);
      if (ret != 0) {
        tWarn("%s cid:%d sid:%d id:%s, meterId not there pConn:%p", pServer->label, chann, sid, pConn->meterId, pConn);
        taosFreeId(pChann->idPool, sid);
        memset(pConn, 0, sizeof(SRpcConn));
        return ret;
      }
    }

    if ((pServer->type == TAOS_CONN_UDPC || pServer->type == TAOS_CONN_UDPS) && pServer->numOfThreads > 1 &&
        pServer->localPort) {

      pServer->index = (pServer->index + 1) % pServer->numOfThreads;
      pConn->localPort = (int16_t)(pServer->localPort + pServer->index);
    }

    taosAddStrHash(pChann->hash, hashstr, (char *)&pConn);
    tTrace("%s cid:%d sid:%d id:%s, TAOS connection is allocated, localPort:%d pConn:%p", pServer->label, chann, sid,
           pConn->meterId, pConn->localPort, pConn);
  } else {
    if (memcmp(pConn->meterId, meterId, tListLen(pConn->meterId)) != 0) {
      tTrace("%s cid:%d sid:%d id:%s, meterId is not matched, received:%s", pServer->label, chann, sid, pConn->meterId,
             meterId);
      return TSDB_CODE_MISMATCHED_METER_ID;
    }
  }

  *ppConn = pConn;

  return TSDB_CODE_SUCCESS;
}
