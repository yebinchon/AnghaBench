
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_8__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int destAdd ;
struct TYPE_10__ {int totalLen; int msgHdr; int timer; } ;
struct TYPE_9__ {int mutex; int fd; int tmrCtrl; int * hash; int localPort; int label; struct TYPE_9__* signature; } ;
typedef TYPE_2__ SUdpConn ;
typedef TYPE_3__ SUdpBuf ;


 int AF_INET ;
 scalar_t__ RPC_MAX_UDP_PKTS ;
 int RPC_MAX_UDP_SIZE ;
 int RPC_UDP_BUF_TIME ;
 int htons (int ) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ sendto (int ,char*,size_t,int ,struct sockaddr*,int) ;
 int tTrace (char*,int ,int ,short,int,int,int ,void*) ;
 int taosAddIpHash (int *,TYPE_3__*,int ,short) ;
 TYPE_3__* taosCreateUdpBuf (TYPE_2__*,int ,short) ;
 scalar_t__ taosGetIpHash (int *,int ,short) ;
 scalar_t__ taosMsgHdrSize (int ) ;
 int taosProcessUdpBufTimer ;
 int taosSendMsgHdr (int ,int ) ;
 int taosSendPacketViaTcp (int ,short,char*,int,void*) ;
 int taosSetMsgHdrData (int ,char*,int) ;
 int taosTmrReset (int ,int ,TYPE_3__*,int ,int *) ;

int taosSendUdpData(uint32_t ip, short port, char *data, int dataLen, void *chandle) {
  SUdpConn *pConn = (SUdpConn *)chandle;
  SUdpBuf * pBuf;

  if (pConn == ((void*)0) || pConn->signature != pConn) return -1;

  if (dataLen >= RPC_MAX_UDP_SIZE) return taosSendPacketViaTcp(ip, port, data, dataLen, chandle);

  if (pConn->hash == ((void*)0)) {
    struct sockaddr_in destAdd;
    memset(&destAdd, 0, sizeof(destAdd));
    destAdd.sin_family = AF_INET;
    destAdd.sin_addr.s_addr = ip;
    destAdd.sin_port = htons((uint16_t)port);

    int ret = (int)sendto(pConn->fd, data, (size_t)dataLen, 0, (struct sockaddr *)&destAdd, sizeof(destAdd));
    tTrace("%s msg is sent to 0x%x:%hu len:%d ret:%d localPort:%hu chandle:0x%x", pConn->label, destAdd.sin_addr.s_addr,
           port, dataLen, ret, pConn->localPort, chandle);

    return ret;
  }

  pthread_mutex_lock(&pConn->mutex);

  pBuf = (SUdpBuf *)taosGetIpHash(pConn->hash, ip, port);
  if (pBuf == ((void*)0)) {
    pBuf = taosCreateUdpBuf(pConn, ip, port);
    taosAddIpHash(pConn->hash, pBuf, ip, port);
  }

  if ((pBuf->totalLen + dataLen > RPC_MAX_UDP_SIZE) || (taosMsgHdrSize(pBuf->msgHdr) >= RPC_MAX_UDP_PKTS)) {
    taosTmrReset(taosProcessUdpBufTimer, RPC_UDP_BUF_TIME, pBuf, pConn->tmrCtrl, &pBuf->timer);

    taosSendMsgHdr(pBuf->msgHdr, pConn->fd);
    pBuf->totalLen = 0;
  }

  taosSetMsgHdrData(pBuf->msgHdr, data, dataLen);

  pBuf->totalLen += dataLen;

  pthread_mutex_unlock(&pConn->mutex);

  return dataLen;
}
