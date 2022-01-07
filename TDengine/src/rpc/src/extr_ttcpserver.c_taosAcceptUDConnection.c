
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* ptr; } ;
struct epoll_event {int events; TYPE_1__ data; } ;
struct TYPE_10__ {int fd; struct TYPE_10__* prev; struct TYPE_10__* next; TYPE_2__* pThreadObj; } ;
struct TYPE_9__ {int numOfThreads; int label; TYPE_2__* pThreadObj; int port; int ip; } ;
struct TYPE_8__ {int numOfFds; int threadId; int threadMutex; int fdReady; TYPE_4__* pHead; int pollFd; } ;
typedef TYPE_2__ SThreadObj ;
typedef TYPE_3__ SServerObj ;
typedef TYPE_4__ SFdObj ;


 int EPOLLIN ;
 int EPOLLPRI ;
 int EPOLLWAKEUP ;
 int EPOLL_CTL_ADD ;
 int accept (int,int *,int *) ;
 int close (int) ;
 scalar_t__ epoll_ctl (int ,int ,int,struct epoll_event*) ;
 int errno ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_4__*,int ,int) ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int strerror (int ) ;
 int tError (char*,int ,...) ;
 int tTrace (char*,int ,int ,int ) ;
 int taosOpenUDServerSocket (int ,int ) ;
 int tfree (TYPE_4__*) ;

void taosAcceptUDConnection(void *arg) {
  int connFd = -1;
  int sockFd;
  int threadId = 0;
  SThreadObj * pThreadObj;
  SServerObj * pServerObj;
  SFdObj * pFdObj;
  struct epoll_event event;

  pServerObj = (SServerObj *)arg;
  sockFd = taosOpenUDServerSocket(pServerObj->ip, pServerObj->port);

  if (sockFd < 0) {
    tError("%s failed to open UD socket, ip:%s, port:%u", pServerObj->label, pServerObj->ip, pServerObj->port);
    return;
  } else {
    tTrace("%s UD server is ready, ip:%s, port:%u", pServerObj->label, pServerObj->ip, pServerObj->port);
  }

  while (1) {
    connFd = accept(sockFd, ((void*)0), ((void*)0));

    if (connFd < 0) {
      tError("%s UD accept failure, errno:%d, reason:%s", pServerObj->label, errno, strerror(errno));
      continue;
    }


    pThreadObj = pServerObj->pThreadObj + threadId;

    pFdObj = (SFdObj *)malloc(sizeof(SFdObj));
    if (pFdObj == ((void*)0)) {
      tError("%s no enough resource to allocate TCP FD IDs", pServerObj->label);
      close(connFd);
      continue;
    }

    memset(pFdObj, 0, sizeof(SFdObj));
    pFdObj->fd = connFd;
    pFdObj->pThreadObj = pThreadObj;

    event.events = EPOLLIN | EPOLLPRI | EPOLLWAKEUP;
    event.data.ptr = pFdObj;
    if (epoll_ctl(pThreadObj->pollFd, EPOLL_CTL_ADD, connFd, &event) < 0) {
      tError("%s failed to add UD FD for epoll, error:%s", pServerObj->label, strerror(errno));
      tfree(pFdObj);
      close(connFd);
      continue;
    }


    pthread_mutex_lock(&(pThreadObj->threadMutex));

    pFdObj->next = pThreadObj->pHead;

    if (pThreadObj->pHead) (pThreadObj->pHead)->prev = pFdObj;

    pThreadObj->pHead = pFdObj;

    pThreadObj->numOfFds++;
    pthread_cond_signal(&pThreadObj->fdReady);

    pthread_mutex_unlock(&(pThreadObj->threadMutex));

    tTrace("%s UD thread:%d, a new connection, numOfFds:%d", pServerObj->label, pThreadObj->threadId,
           pThreadObj->numOfFds);


    threadId++;
    threadId = threadId % pServerObj->numOfThreads;
  }
}
