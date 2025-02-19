
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
typedef void* int32_t ;
typedef int handleViaTcp ;
struct TYPE_9__ {scalar_t__ handle; void* msgLen; scalar_t__ port; } ;
struct TYPE_8__ {int tcp; void* msgLen; int msgType; scalar_t__ content; } ;
struct TYPE_7__ {int port; scalar_t__ pSet; } ;
struct TYPE_6__ {int label; scalar_t__ port; scalar_t__ server; } ;
typedef TYPE_1__ SUdpConnSet ;
typedef TYPE_2__ SUdpConn ;
typedef TYPE_3__ STaosHeader ;
typedef TYPE_4__ SPacketInfo ;
typedef int SHandleViaTcp ;


 int errno ;
 scalar_t__ htonl (int) ;
 int memcpy (TYPE_3__*,char*,int) ;
 int strerror (int ) ;
 int tError (char*,int ,...) ;
 int tTrace (char*,int ,...) ;
 int taosCloseTcpSocket (int) ;
 int taosInitHandleViaTcp (int *,int ) ;
 int taosOpenTcpClientSocket (char*,int ,int ) ;
 int taosReadMsg (int,char*,int) ;
 int taosSendUdpData (int,short,char*,int,void*) ;
 int taosWriteMsg (int,char*,int) ;
 scalar_t__ taosWriteSocket (int,char*,int) ;
 int tinet_ntoa (char*,int) ;
 int tsLocalIp ;

int taosSendPacketViaTcp(uint32_t ip, short port, char *data, int dataLen, void *chandle) {
  SUdpConn * pConn = (SUdpConn *)chandle;
  SUdpConnSet *pSet = (SUdpConnSet *)pConn->pSet;
  int code = -1, retLen, msgLen;
  char ipstr[64];
  char buffer[128];
  STaosHeader *pHead;

  if (pSet->server) {


    pHead = (STaosHeader *)buffer;
    memcpy(pHead, data, sizeof(STaosHeader));
    pHead->tcp = 1;

    SPacketInfo *pInfo = (SPacketInfo *)pHead->content;
    pInfo->handle = (uint64_t)data;
    pInfo->port = (uint16_t)pSet->port;
    pInfo->msgLen = pHead->msgLen;

    msgLen = sizeof(STaosHeader) + sizeof(SPacketInfo);
    pHead->msgLen = (int32_t)htonl((uint32_t)msgLen);
    code = taosSendUdpData(ip, port, buffer, msgLen, chandle);
    tTrace("%s data from server will be sent via TCP:%d, msgType:%d, length:%d, handle:0x%x", pSet->label, pInfo->port,
           pHead->msgType, htonl((uint32_t)pInfo->msgLen), pInfo->handle);
    if (code > 0) code = dataLen;
  } else {

    tTrace("%s data will be sent via TCP from client", pSet->label);


    pHead = (STaosHeader *)buffer;
    memcpy(pHead, data, sizeof(STaosHeader));
    pHead->tcp = 2;
    msgLen = sizeof(STaosHeader);
    pHead->msgLen = (int32_t)htonl(msgLen);
    code = taosSendUdpData(ip, port, buffer, msgLen, chandle);

    pHead = (STaosHeader *)data;

    tinet_ntoa(ipstr, ip);
    int fd = taosOpenTcpClientSocket(ipstr, pConn->port, tsLocalIp);
    if (fd < 0) {
      tError("%s failed to open TCP socket to:%s:%u to send packet", pSet->label, ipstr, pConn->port);
    } else {
      SHandleViaTcp handleViaTcp;
      taosInitHandleViaTcp(&handleViaTcp, 0);
      retLen = (int)taosWriteSocket(fd, (char *)&handleViaTcp, sizeof(SHandleViaTcp));

      if (retLen != (int)sizeof(handleViaTcp)) {
        tError("%s failed to send handle to server, retLen:%d", pSet->label, retLen);
      } else {
        retLen = taosWriteMsg(fd, data, dataLen);
        if (retLen != dataLen) {
          tError("%s failed to send data via TCP, dataLen:%d, retLen:%d, error:%s", pSet->label, dataLen, retLen,
                 strerror(errno));
        } else {
          code = dataLen;
          tTrace("%s data is sent via TCP successfully", pSet->label);
        }
      }

      taosReadMsg(fd, (char *)&handleViaTcp, sizeof(SHandleViaTcp));

      taosCloseTcpSocket(fd);
    }
  }

  return code;
}
