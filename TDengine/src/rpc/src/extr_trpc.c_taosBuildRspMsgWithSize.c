
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int meterId; int peerId; int ownId; int inTranId; struct TYPE_5__* signature; } ;
struct TYPE_4__ {int version; char msgType; scalar_t__ content; int meterId; scalar_t__ uid; int destId; int sourceId; int tranId; scalar_t__ encrypt; scalar_t__ tcp; scalar_t__ spi; } ;
typedef TYPE_1__ STaosHeader ;
typedef int STaosDigest ;
typedef TYPE_2__ SRpcConn ;
typedef int SMsgNode ;


 scalar_t__ malloc (size_t) ;
 int memcpy (int ,int ,int ) ;
 int memset (char*,int ,size_t) ;
 int tError (char*,TYPE_2__*,...) ;
 int tListLen (int ) ;

char *taosBuildRspMsgWithSize(void *param, char type, int size) {
  STaosHeader *pHeader;
  char * pMsg;
  SRpcConn * pConn = (SRpcConn *)param;

  if (pConn == ((void*)0) || pConn->signature != pConn) {
    tError("pConn:%p, connection has to be opened first before building a message", pConn);
    return ((void*)0);
  }

  size += sizeof(SMsgNode) + sizeof(STaosHeader) + sizeof(STaosDigest);
  pMsg = (char *)malloc((size_t)size);
  if (pMsg == ((void*)0)) {
    tError("pConn:%p, malloc(%d) failed when building a type:%d message", pConn, size, type);
    return ((void*)0);
  }

  memset(pMsg, 0, (size_t)size);
  pHeader = (STaosHeader *)pMsg;
  pHeader->version = 1;
  pHeader->msgType = type;
  pHeader->spi = 0;
  pHeader->tcp = 0;
  pHeader->encrypt = 0;
  pHeader->tranId = pConn->inTranId;
  pHeader->sourceId = pConn->ownId;
  pHeader->destId = pConn->peerId;
  pHeader->uid = 0;
  memcpy(pHeader->meterId, pConn->meterId, tListLen(pHeader->meterId));

  return (char *)pHeader->content;
}
