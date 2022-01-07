
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_5__ {scalar_t__ commitInProcess; int vmutex; } ;
struct TYPE_4__ {int vnode; scalar_t__ pCachePool; } ;
typedef TYPE_1__ SVnodeObj ;
typedef TYPE_2__ SCachePool ;


 int dWarn (char*,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int taosMsleep (int) ;

__attribute__((used)) static void vnodeWaitForCommitComplete(SVnodeObj *pVnode) {
  SCachePool *pPool = (SCachePool *)(pVnode->pCachePool);


  const int32_t totalCount = 1000;
  int32_t count = 0;


  while(count++ < totalCount) {
    int32_t commitInProcess = 0;

    pthread_mutex_lock(&pPool->vmutex);
    commitInProcess = pPool->commitInProcess;
    pthread_mutex_unlock(&pPool->vmutex);

    if (commitInProcess) {
      dWarn("vid:%d still in commit, wait for completed", pVnode->vnode);
      taosMsleep(10);
    }
  }
}
