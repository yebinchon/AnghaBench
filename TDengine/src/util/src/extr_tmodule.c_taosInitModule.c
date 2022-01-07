
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pthread_attr_t ;
typedef int msg_t ;
struct TYPE_4__ {char* name; int (* init ) () ;int thread; scalar_t__ emptySlot; scalar_t__ fullSlot; scalar_t__ queueSize; int * queue; int fullSem; int emptySem; int stmMutex; int queueMutex; } ;
typedef TYPE_1__ module_t ;


 int PTHREAD_CREATE_JOINABLE ;
 int errno ;
 scalar_t__ malloc (size_t) ;
 int memset (int *,int ,size_t) ;
 int printf (char*,char*,char*) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int ) ;
 scalar_t__ pthread_create (int *,int *,int ,void*) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 char* strerror (int ) ;
 int stub1 () ;
 int taosCleanUpModule (TYPE_1__*) ;
 int taosProcessQueue ;
 scalar_t__ tsem_init (int *,int ,unsigned int) ;

int taosInitModule(module_t *pMod) {
  pthread_attr_t attr;

  if (pthread_mutex_init(&pMod->queueMutex, ((void*)0)) < 0) {
    printf("ERROR: init %s queueMutex failed, reason:%s\n", pMod->name, strerror(errno));
    taosCleanUpModule(pMod);
    return -1;
  }

  if (pthread_mutex_init(&pMod->stmMutex, ((void*)0)) < 0) {
    printf("ERROR: init %s stmMutex failed, reason:%s\n", pMod->name, strerror(errno));
    taosCleanUpModule(pMod);
    return -1;
  }

  if (tsem_init(&pMod->emptySem, 0, (unsigned int)pMod->queueSize) != 0) {
    printf("ERROR: init %s empty semaphore failed, reason:%s\n", pMod->name, strerror(errno));
    taosCleanUpModule(pMod);
    return -1;
  }

  if (tsem_init(&pMod->fullSem, 0, 0) != 0) {
    printf("ERROR: init %s full semaphore failed, reason:%s\n", pMod->name, strerror(errno));
    taosCleanUpModule(pMod);
    return -1;
  }

  if ((pMod->queue = (msg_t *)malloc((size_t)pMod->queueSize * sizeof(msg_t))) == ((void*)0)) {
    printf("ERROR: %s no enough memory, reason:%s\n", pMod->name, strerror(errno));
    taosCleanUpModule(pMod);
    return -1;
  }

  memset(pMod->queue, 0, (size_t)pMod->queueSize * sizeof(msg_t));
  pMod->fullSlot = 0;
  pMod->emptySlot = 0;

  pthread_attr_init(&attr);
  pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_JOINABLE);

  if (pthread_create(&pMod->thread, &attr, taosProcessQueue, (void *)pMod) != 0) {
    printf("ERROR: %s failed to create thread, reason:%s\n", pMod->name, strerror(errno));
    taosCleanUpModule(pMod);
    return -1;
  }

  if (pMod->init) return (*(pMod->init))();

  return 0;
}
