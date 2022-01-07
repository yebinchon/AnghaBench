
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pthread_attr_t ;
struct TYPE_6__ {int numOfThreads; char* label; int serverPort; int serverIp; int thread; int processData; TYPE_1__* pThreads; } ;
struct TYPE_5__ {char* label; int threadId; scalar_t__ pollFd; int thread; int fdReady; int threadMutex; int processData; TYPE_2__* pServer; } ;
typedef TYPE_1__ HttpThread ;
typedef TYPE_2__ HttpServer ;


 int HTTP_MAX_EVENTS ;
 int PTHREAD_CREATE_JOINABLE ;
 scalar_t__ epoll_create (int ) ;
 int errno ;
 scalar_t__ httpAcceptHttpConnection ;
 int httpError (char*,...) ;
 scalar_t__ httpProcessHttpData ;
 int httpTrace (char*,...) ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int pthread_attr_destroy (int *) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int ) ;
 scalar_t__ pthread_cond_init (int *,int *) ;
 scalar_t__ pthread_create (int *,int *,void*,void*) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 int sprintf (char*,char*,char*,int) ;
 int strerror (int ) ;

bool httpInitConnect(HttpServer *pServer) {
  int i;
  pthread_attr_t thattr;
  HttpThread * pThread;

  pServer->pThreads = (HttpThread *)malloc(sizeof(HttpThread) * (size_t)pServer->numOfThreads);
  if (pServer->pThreads == ((void*)0)) {
    httpError("init error no enough memory");
    return 0;
  }
  memset(pServer->pThreads, 0, sizeof(HttpThread) * (size_t)pServer->numOfThreads);

  pthread_attr_init(&thattr);
  pthread_attr_setdetachstate(&thattr, PTHREAD_CREATE_JOINABLE);
  pThread = pServer->pThreads;
  for (i = 0; i < pServer->numOfThreads; ++i) {
    sprintf(pThread->label, "%s%d", pServer->label, i);
    pThread->pServer = pServer;
    pThread->processData = pServer->processData;
    pThread->threadId = i;

    if (pthread_mutex_init(&(pThread->threadMutex), ((void*)0)) < 0) {
      httpError("http thread:%s, failed to init HTTP process data mutex, reason:%s", pThread->label, strerror(errno));
      return 0;
    }

    if (pthread_cond_init(&(pThread->fdReady), ((void*)0)) != 0) {
      httpError("http thread:%s, init HTTP condition variable failed, reason:%s", pThread->label, strerror(errno));
      return 0;
    }

    pThread->pollFd = epoll_create(HTTP_MAX_EVENTS);
    if (pThread->pollFd < 0) {
      httpError("http thread:%s, failed to create HTTP epoll", pThread->label);
      return 0;
    }

    if (pthread_create(&(pThread->thread), &thattr, (void *)httpProcessHttpData, (void *)(pThread)) != 0) {
      httpError("http thread:%s, failed to create HTTP process data thread, reason:%s",
                pThread->label, strerror(errno));
      return 0;
    }

    httpTrace("http thread:%p:%s, initialized", pThread, pThread->label);
    pThread++;
  }

  if (pthread_create(&(pServer->thread), &thattr, (void *)httpAcceptHttpConnection, (void *)(pServer)) != 0) {
    httpError("http server:%s, failed to create Http accept thread, reason:%s", pServer->label, strerror(errno));
    return 0;
  }

  pthread_attr_destroy(&thattr);

  httpTrace("http server:%s, initialized, ip:%s:%u, numOfThreads:%d", pServer->label, pServer->serverIp,
            pServer->serverPort, pServer->numOfThreads);
  return 1;
}
