
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ commitLog; } ;
struct TYPE_5__ {char* logFn; char* logOFn; int logFd; int logMutex; int version; TYPE_1__ cfg; int mappingSize; int pMem; } ;
typedef TYPE_2__ SVnodeObj ;


 scalar_t__ VALIDFD (int) ;
 int close (int) ;
 int munmap (int ,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int rename (char*,char*) ;
 TYPE_2__* vnodeList ;
 int vnodeOpenCommitLog (int,int ) ;

int vnodeRenewCommitLog(int vnode) {
  SVnodeObj *pVnode = vnodeList + vnode;
  char * fileName = pVnode->logFn;
  char * oldName = pVnode->logOFn;

  pthread_mutex_lock(&(pVnode->logMutex));

  if (VALIDFD(pVnode->logFd)) {
    munmap(pVnode->pMem, pVnode->mappingSize);
    close(pVnode->logFd);
    rename(fileName, oldName);
  }

  if (pVnode->cfg.commitLog) vnodeOpenCommitLog(vnode, vnodeList[vnode].version);

  pthread_mutex_unlock(&(pVnode->logMutex));

  return pVnode->logFd;
}
