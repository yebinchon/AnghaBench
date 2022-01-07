
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {TYPE_4__* ptr; } ;
struct epoll_event {int events; TYPE_1__ data; } ;
typedef int int32_t ;
typedef int int16_t ;
struct TYPE_10__ {int * thandle; scalar_t__ port; int ip; int fd; } ;
struct TYPE_9__ {scalar_t__ msgLen; } ;
struct TYPE_8__ {int numOfFds; int shandle; int * (* processData ) (void*,int,int ,int ,int ,int *,TYPE_4__*) ;int label; int threadId; int pollFd; int threadMutex; int fdReady; } ;
typedef TYPE_2__ SThreadObj ;
typedef TYPE_3__ STaosHeader ;
typedef TYPE_4__ SFdObj ;


 int EPOLLERR ;
 int EPOLLHUP ;
 int epoll_wait (int ,struct epoll_event*,int,int) ;
 int htonl (int ) ;
 void* malloc (int) ;
 int maxEvents ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 void* realloc (void*,size_t) ;
 int * stub1 (void*,int,int ,int ,int ,int *,TYPE_4__*) ;
 int tError (char*,int ,int,...) ;
 int tTrace (char*,int ,int ) ;
 int taosCleanUpFdObj (TYPE_4__*) ;
 int taosReadMsg (int ,void*,int) ;
 int tfree (void*) ;

__attribute__((used)) static void taosProcessTcpData(void *param) {
  SThreadObj * pThreadObj;
  int i, fdNum;
  SFdObj * pFdObj;
  struct epoll_event events[maxEvents];

  pThreadObj = (SThreadObj *)param;

  while (1) {
    pthread_mutex_lock(&pThreadObj->threadMutex);
    if (pThreadObj->numOfFds < 1) {
      pthread_cond_wait(&pThreadObj->fdReady, &pThreadObj->threadMutex);
    }
    pthread_mutex_unlock(&pThreadObj->threadMutex);

    fdNum = epoll_wait(pThreadObj->pollFd, events, maxEvents, -1);
    if (fdNum < 0) continue;

    for (i = 0; i < fdNum; ++i) {
      pFdObj = events[i].data.ptr;

      if (events[i].events & EPOLLERR) {
        tTrace("%s TCP thread:%d, error happened on FD", pThreadObj->label, pThreadObj->threadId);
        taosCleanUpFdObj(pFdObj);
        continue;
      }

      if (events[i].events & EPOLLHUP) {
        tTrace("%s TCP thread:%d, FD hang up", pThreadObj->label, pThreadObj->threadId);
        taosCleanUpFdObj(pFdObj);
        continue;
      }

      void *buffer = malloc(1024);
      int headLen = taosReadMsg(pFdObj->fd, buffer, sizeof(STaosHeader));
      if (headLen != sizeof(STaosHeader)) {
        tError("%s read error, headLen:%d", pThreadObj->label, headLen);
        taosCleanUpFdObj(pFdObj);
        tfree(buffer);
        continue;
      }

      int dataLen = (int32_t)htonl((uint32_t)((STaosHeader *)buffer)->msgLen);
      if (dataLen > 1024) buffer = realloc(buffer, (size_t)dataLen);

      int leftLen = dataLen - headLen;
      int retLen = taosReadMsg(pFdObj->fd, buffer + headLen, leftLen);




      if (leftLen != retLen) {
        tError("%s read error, leftLen:%d retLen:%d", pThreadObj->label, leftLen, retLen);
        taosCleanUpFdObj(pFdObj);
        tfree(buffer);
        continue;
      }

      pFdObj->thandle = (*(pThreadObj->processData))(buffer, dataLen, pFdObj->ip, (int16_t)pFdObj->port,
                                                     pThreadObj->shandle, pFdObj->thandle, pFdObj);

      if (pFdObj->thandle == ((void*)0)) taosCleanUpFdObj(pFdObj);
    }
  }
}
