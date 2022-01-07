
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {short peerPort; int chann; int sid; int peerIp; int peerId; } ;
typedef TYPE_1__ SRpcConn ;



void taosGetRpcConnInfo(void *thandle, uint32_t *peerId, uint32_t *peerIp, short *peerPort, int *cid, int *sid) {
  SRpcConn *pConn = (SRpcConn *)thandle;

  *peerId = pConn->peerId;
  *peerIp = pConn->peerIp;
  *peerPort = pConn->peerPort;

  *cid = pConn->chann;
  *sid = pConn->sid;
}
