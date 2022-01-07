
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef double int64_t ;
struct TYPE_6__ {double totalBlocks; } ;
struct TYPE_7__ {scalar_t__ commitLog; TYPE_1__ cacheNumOfBlocks; scalar_t__ cacheBlockSize; } ;
struct TYPE_8__ {double mappingSize; double mappingThreshold; scalar_t__ commitInProcess; size_t pWrite; int version; TYPE_2__ cfg; int logFn; int logOFn; int logMutex; } ;
typedef TYPE_3__ SVnodeObj ;


 int dError (char*,int) ;
 int dTrace (char*,int) ;
 int pthread_mutex_init (int *,int *) ;
 int remove (int ) ;
 int sprintf (int ,char*,char*,int,int) ;
 char* tsDirectory ;
 int vnodeCommitToFile (TYPE_3__*) ;
 TYPE_3__* vnodeList ;
 scalar_t__ vnodeOpenCommitLog (int,int ) ;
 size_t vnodeRestoreDataFromLog (int,int ,int *) ;

int vnodeInitCommit(int vnode) {
  size_t size = 0;
  uint64_t firstV = 0;
  SVnodeObj *pVnode = vnodeList + vnode;

  pthread_mutex_init(&(pVnode->logMutex), ((void*)0));

  sprintf(pVnode->logFn, "%s/vnode%d/db/submit%d.log", tsDirectory, vnode, vnode);
  sprintf(pVnode->logOFn, "%s/vnode%d/db/submit%d.olog", tsDirectory, vnode, vnode);
  pVnode->mappingSize = ((int64_t)pVnode->cfg.cacheBlockSize) * pVnode->cfg.cacheNumOfBlocks.totalBlocks * 1.5;
  pVnode->mappingThreshold = pVnode->mappingSize * 0.7;


  size = vnodeRestoreDataFromLog(vnode, pVnode->logOFn, &firstV);
  if (size < 0) return -1;
  if (size > 0) {
    if (pVnode->commitInProcess == 0) vnodeCommitToFile(pVnode);
    remove(pVnode->logOFn);
  }


  size = vnodeRestoreDataFromLog(vnode, pVnode->logFn, &firstV);
  if (size < 0) return -1;

  if (pVnode->cfg.commitLog == 0) return 0;

  if (size == 0) firstV = pVnode->version;
  if (vnodeOpenCommitLog(vnode, firstV) < 0) {
    dError("vid:%d, commit log init failed", vnode);
    return -1;
  }

  pVnode->pWrite += size;
  dTrace("vid:%d, commit log is initialized", vnode);

  return 0;
}
