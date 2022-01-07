
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {void* signature; void* timer; int emptyNum; scalar_t__ totalLen; int msgHdr; TYPE_1__* pConn; } ;
struct TYPE_5__ {int tmrCtrl; int mutex; int fd; } ;
typedef TYPE_1__ SUdpConn ;
typedef TYPE_2__ SUdpBuf ;


 int RPC_UDP_BUF_TIME ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ taosMsgHdrSize (int ) ;
 int taosRemoveUdpBuf (TYPE_2__*) ;
 int taosSendMsgHdr (int ,int ) ;
 int taosTmrReset (void (*) (void*,void*),int ,TYPE_2__*,int ,void**) ;

void taosProcessUdpBufTimer(void *param, void *tmrId) {
  SUdpBuf *pBuf = (SUdpBuf *)param;
  if (pBuf->signature != param) return;
  if (pBuf->timer != tmrId) return;

  SUdpConn *pConn = pBuf->pConn;

  pthread_mutex_lock(&pConn->mutex);

  if (taosMsgHdrSize(pBuf->msgHdr) > 0) {
    taosSendMsgHdr(pBuf->msgHdr, pConn->fd);
    pBuf->totalLen = 0;
    pBuf->emptyNum = 0;
  } else {
    pBuf->emptyNum++;
    if (pBuf->emptyNum > 200) {
      taosRemoveUdpBuf(pBuf);
      pBuf = ((void*)0);
    }
  }

  pthread_mutex_unlock(&pConn->mutex);

  if (pBuf) taosTmrReset(taosProcessUdpBufTimer, RPC_UDP_BUF_TIME, pBuf, pConn->tmrCtrl, &pBuf->timer);
}
