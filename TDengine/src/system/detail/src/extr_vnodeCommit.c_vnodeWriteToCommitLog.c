
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int simpleCheck ;
typedef int head ;
struct TYPE_9__ {int sid; char action; int sversion; int contLen; int simpleCheck; } ;
struct TYPE_8__ {int vnode; int sid; int sversion; } ;
struct TYPE_7__ {char* pWrite; int mappingSize; char* pMem; int mappingThreshold; int logMutex; } ;
typedef TYPE_1__ SVnodeObj ;
typedef TYPE_2__ SMeterObj ;
typedef TYPE_3__ SCommitHead ;


 int TSDB_CODE_ACTION_IN_PROGRESS ;
 int dTrace (char*,int,...) ;
 int memcpy (char*,...) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_1__* vnodeList ;
 int vnodeProcessCommitTimer (TYPE_1__*,int *) ;

int vnodeWriteToCommitLog(SMeterObj *pObj, char action, char *cont, int contLen, int sverion) {
  SVnodeObj *pVnode = vnodeList + pObj->vnode;
  if (pVnode->pWrite == ((void*)0)) return 0;

  SCommitHead head;
  head.sid = pObj->sid;
  head.action = action;
  head.sversion = pObj->sversion;
  head.contLen = contLen;
  head.simpleCheck = (head.sversion+head.sid+head.contLen+head.action) & 0xFFFFFF;
  int simpleCheck = head.simpleCheck;

  pthread_mutex_lock(&(pVnode->logMutex));

  if (pVnode->mappingSize - (pVnode->pWrite - pVnode->pMem) < contLen + sizeof(SCommitHead) + sizeof(simpleCheck) + 100) {
    pthread_mutex_unlock(&(pVnode->logMutex));
    dTrace("vid:%d, mem mapping space is not enough, wait for commit", pObj->vnode);
    vnodeProcessCommitTimer(pVnode, ((void*)0));
    return TSDB_CODE_ACTION_IN_PROGRESS;
  }
  char *pWrite = pVnode->pWrite;
  pVnode->pWrite += sizeof(head) + contLen + sizeof(simpleCheck);
  memcpy(pWrite, (char *)&head, sizeof(head));
  memcpy(pWrite + sizeof(head), cont, contLen);
  memcpy(pWrite + sizeof(head) + contLen, &simpleCheck, sizeof(simpleCheck));
  pthread_mutex_unlock(&(pVnode->logMutex));

  if (pVnode->pWrite - pVnode->pMem > pVnode->mappingThreshold) {
    dTrace("vid:%d, mem mapping is close to limit, commit", pObj->vnode);
    vnodeProcessCommitTimer(pVnode, ((void*)0));
  }

  dTrace("vid:%d sid:%d, data is written to commit log", pObj->vnode, pObj->sid);

  return 0;
}
