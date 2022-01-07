
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int pthread_attr_t ;
struct TYPE_5__ {short port; int numOfThreads; int thread; TYPE_1__* pThreadObj; int label; int ip; } ;
struct TYPE_4__ {scalar_t__ pollFd; int threadId; int thread; int fdReady; int threadMutex; void* shandle; int label; void* processData; } ;
typedef TYPE_1__ SThreadObj ;
typedef TYPE_2__ SServerObj ;


 int PTHREAD_CREATE_JOINABLE ;
 scalar_t__ epoll_create (int) ;
 int errno ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int pthread_attr_destroy (int *) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int ) ;
 scalar_t__ pthread_cond_init (int *,int *) ;
 scalar_t__ pthread_create (int *,int *,void*,void*) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 int strcpy (int ,char*) ;
 int strerror (int ) ;
 int tError (char*,char*,...) ;
 int tTrace (char*,char*,char*,short,int) ;
 scalar_t__ taosAcceptTcpConnection ;
 scalar_t__ taosProcessTcpData ;

void *taosInitTcpServer(char *ip, short port, char *label, int numOfThreads, void *fp, void *shandle) {
  int i;
  SServerObj * pServerObj;
  pthread_attr_t thattr;
  SThreadObj * pThreadObj;

  pServerObj = (SServerObj *)malloc(sizeof(SServerObj));
  strcpy(pServerObj->ip, ip);
  pServerObj->port = port;
  strcpy(pServerObj->label, label);
  pServerObj->numOfThreads = numOfThreads;

  pServerObj->pThreadObj = (SThreadObj *)malloc(sizeof(SThreadObj) * (size_t)numOfThreads);
  if (pServerObj->pThreadObj == ((void*)0)) {
    tError("TCP:%s no enough memory", label);
    return ((void*)0);
  }
  memset(pServerObj->pThreadObj, 0, sizeof(SThreadObj) * (size_t)numOfThreads);

  pThreadObj = pServerObj->pThreadObj;
  for (i = 0; i < numOfThreads; ++i) {
    pThreadObj->processData = fp;
    strcpy(pThreadObj->label, label);
    pThreadObj->shandle = shandle;

    if (pthread_mutex_init(&(pThreadObj->threadMutex), ((void*)0)) < 0) {
      tError("%s failed to init TCP process data mutex, reason:%s", label, strerror(errno));
      return ((void*)0);
    }

    if (pthread_cond_init(&(pThreadObj->fdReady), ((void*)0)) != 0) {
      tError("%s init TCP condition variable failed, reason:%s\n", label, strerror(errno));
      return ((void*)0);
    }

    pThreadObj->pollFd = epoll_create(10);
    if (pThreadObj->pollFd < 0) {
      tError("%s failed to create TCP epoll", label);
      return ((void*)0);
    }

    pthread_attr_init(&thattr);
    pthread_attr_setdetachstate(&thattr, PTHREAD_CREATE_JOINABLE);
    if (pthread_create(&(pThreadObj->thread), &thattr, (void *)taosProcessTcpData, (void *)(pThreadObj)) != 0) {
      tError("%s failed to create TCP process data thread, reason:%s", label, strerror(errno));
      return ((void*)0);
    }

    pThreadObj->threadId = i;
    pThreadObj++;
  }

  pthread_attr_init(&thattr);
  pthread_attr_setdetachstate(&thattr, PTHREAD_CREATE_JOINABLE);
  if (pthread_create(&(pServerObj->thread), &thattr, (void *)taosAcceptTcpConnection, (void *)(pServerObj)) != 0) {
    tError("%s failed to create TCP accept thread, reason:%s", label, strerror(errno));
    return ((void*)0);
  }
  pthread_attr_destroy(&thattr);
  tTrace("%s TCP server is initialized, ip:%s port:%u numOfThreads:%d", label, ip, port, numOfThreads);

  return (void *)pServerObj;
}
