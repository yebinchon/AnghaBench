
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char uint32_t ;
typedef int timeStamp ;
typedef int int32_t ;
struct TYPE_2__ {char msgType; char* meterId; int msgLen; scalar_t__ content; scalar_t__ sourceId; scalar_t__ destId; int tranId; scalar_t__ encrypt; scalar_t__ spi; scalar_t__ tcp; int version; } ;
typedef TYPE_1__ STaosHeader ;


 int TSDB_CODE_INVALID_TIME_STAMP ;
 scalar_t__ htonl (char) ;
 int memcpy (char*,char*,int) ;
 int tListLen (char*) ;
 char taosGetTimestampSec () ;

int taosBuildErrorMsgToPeer(char *pMsg, int code, char *pReply) {
  STaosHeader *pRecvHeader, *pReplyHeader;
  char * pContent;
  uint32_t timeStamp;
  int msgLen;

  pRecvHeader = (STaosHeader *)pMsg;
  pReplyHeader = (STaosHeader *)pReply;

  pReplyHeader->version = pRecvHeader->version;
  pReplyHeader->msgType = (char)(pRecvHeader->msgType + 1);
  pReplyHeader->tcp = 0;
  pReplyHeader->spi = 0;
  pReplyHeader->encrypt = 0;
  pReplyHeader->tranId = pRecvHeader->tranId;
  pReplyHeader->sourceId = 0;
  pReplyHeader->destId = pRecvHeader->sourceId;
  memcpy(pReplyHeader->meterId, pRecvHeader->meterId, tListLen(pReplyHeader->meterId));

  pContent = (char *)pReplyHeader->content;
  *pContent = (char)code;
  pContent++;

  if (code == TSDB_CODE_INVALID_TIME_STAMP) {

    timeStamp = taosGetTimestampSec();
    memcpy(pContent, &timeStamp, sizeof(timeStamp));
    pContent += sizeof(timeStamp);
  }

  msgLen = (int)(pContent - pReply);
  pReplyHeader->msgLen = (int32_t)htonl((uint32_t)msgLen);

  return msgLen;
}
