
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int pthread_t ;
typedef int pthread_attr_t ;
struct TYPE_5__ {int queueSize; char* label; int numOfThreads; int * qthread; scalar_t__ emptySlot; scalar_t__ fullSlot; struct TYPE_5__* queue; int fullSem; int emptySem; int queueMutex; } ;
typedef TYPE_1__ SSchedQueue ;
typedef TYPE_1__ SSchedMsg ;


 int PTHREAD_CREATE_JOINABLE ;
 int errno ;
 int * malloc (int) ;
 int memset (TYPE_1__*,int ,size_t) ;
 int pError (char*,char const*,int ) ;
 int pTrace (char*,char const*,int ) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int ) ;
 scalar_t__ pthread_create (int *,int *,int ,void*) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 int strerror (int ) ;
 int strncpy (char*,char const*,int) ;
 int taosCleanUpScheduler (TYPE_1__*) ;
 int taosProcessSchedQueue ;
 scalar_t__ tsem_init (int *,int ,unsigned int) ;

void *taosInitScheduler(int queueSize, int numOfThreads, const char *label) {
  pthread_attr_t attr;
  SSchedQueue * pSched = (SSchedQueue *)malloc(sizeof(SSchedQueue));
  if (pSched == ((void*)0)) {
    pError("%s: no enough memory for pSched, reason: %s", label, strerror(errno));
    goto _error;
  }

  memset(pSched, 0, sizeof(SSchedQueue));
  pSched->queueSize = queueSize;
  strncpy(pSched->label, label, sizeof(pSched->label));
  pSched->label[sizeof(pSched->label)-1] = '\0';

  if (pthread_mutex_init(&pSched->queueMutex, ((void*)0)) < 0) {
    pError("init %s:queueMutex failed, reason:%s", pSched->label, strerror(errno));
    goto _error;
  }

  if (tsem_init(&pSched->emptySem, 0, (unsigned int)pSched->queueSize) != 0) {
    pError("init %s:empty semaphore failed, reason:%s", pSched->label, strerror(errno));
    goto _error;
  }

  if (tsem_init(&pSched->fullSem, 0, 0) != 0) {
    pError("init %s:full semaphore failed, reason:%s", pSched->label, strerror(errno));
    goto _error;
  }

  if ((pSched->queue = (SSchedMsg *)malloc((size_t)pSched->queueSize * sizeof(SSchedMsg))) == ((void*)0)) {
    pError("%s: no enough memory for queue, reason:%s", pSched->label, strerror(errno));
    goto _error;
  }

  memset(pSched->queue, 0, (size_t)pSched->queueSize * sizeof(SSchedMsg));
  pSched->fullSlot = 0;
  pSched->emptySlot = 0;

  pSched->qthread = malloc(sizeof(pthread_t) * (size_t)numOfThreads);
  if (pSched->qthread == ((void*)0)) {
    pError("%s: no enough memory for qthread, reason: %s", pSched->label, strerror(errno));
    goto _error;
  }

  pthread_attr_init(&attr);
  pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_JOINABLE);

  for (int i = 0; i < numOfThreads; ++i) {
    if (pthread_create(pSched->qthread + i, &attr, taosProcessSchedQueue, (void *)pSched) != 0) {
      pError("%s: failed to create rpc thread, reason:%s", pSched->label, strerror(errno));
      goto _error;
    }
    ++pSched->numOfThreads;
  }

  pTrace("%s scheduler is initialized, numOfThreads:%d", pSched->label, pSched->numOfThreads);

  return (void *)pSched;

_error:
  taosCleanUpScheduler(pSched);
  return ((void*)0);
}
