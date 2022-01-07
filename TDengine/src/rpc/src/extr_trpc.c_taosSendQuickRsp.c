
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef void* int32_t ;
struct TYPE_7__ {char* pQuickRsp; int secret; scalar_t__ spi; } ;
struct TYPE_6__ {int auth; scalar_t__ timeStamp; } ;
struct TYPE_5__ {void* msgLen; scalar_t__ spi; } ;
typedef TYPE_1__ STaosHeader ;
typedef TYPE_2__ STaosDigest ;
typedef TYPE_3__ SRpcConn ;


 scalar_t__ TSDB_AUTH_LEN ;
 scalar_t__ htonl (int ) ;
 int taosBuildAuthHeader (int *,scalar_t__,int ,int ) ;
 char* taosBuildRspMsgWithSize (void*,char,int) ;
 int taosGetTimestampSec () ;
 int taosSendDataToPeer (TYPE_3__*,char*,int) ;
 int tfree (char*) ;

int taosSendQuickRsp(void *thandle, char rsptype, char code) {
  char * pCont;
  int contLen;
  STaosHeader *pHeader;
  char * msg;
  int msgLen;
  SRpcConn * pConn = (SRpcConn *)thandle;

  pCont = taosBuildRspMsgWithSize(thandle, rsptype, 32);
  if (pCont == ((void*)0)) return 0;

  *pCont = code;
  contLen = 1;

  pHeader = (STaosHeader *)(pCont - sizeof(STaosHeader));
  msg = (char *)pHeader;
  msgLen = contLen + (int32_t)sizeof(STaosHeader);

  if (pConn->spi) {

    pHeader->spi = pConn->spi;
    STaosDigest *pDigest = (STaosDigest *)(pCont + contLen);
    pDigest->timeStamp = htonl(taosGetTimestampSec());
    msgLen += sizeof(STaosDigest);
    pHeader->msgLen = (int32_t)htonl((uint32_t)msgLen);
    taosBuildAuthHeader((uint8_t *)pHeader, msgLen - TSDB_AUTH_LEN, pDigest->auth, pConn->secret);
  } else {
    pHeader->msgLen = (int32_t)htonl((uint32_t)msgLen);
  }

  tfree(pConn->pQuickRsp);
  pConn->pQuickRsp = msg;
  taosSendDataToPeer(pConn, (char *)pHeader, msgLen);

  return msgLen;
}
