
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_18__ {scalar_t__ commitInProcess; int vmutex; } ;
struct TYPE_17__ {void* signature; int retry; struct TYPE_17__* opayload; TYPE_2__* pShell; scalar_t__ importedRows; TYPE_3__* pObj; } ;
struct TYPE_16__ {size_t vnode; scalar_t__ numOfQueries; int meterId; int sid; } ;
struct TYPE_15__ {int code; scalar_t__ count; int numOfTotalPoints; } ;
struct TYPE_14__ {int version; int vmutex; scalar_t__ pCachePool; } ;
typedef TYPE_1__ SVnodeObj ;
typedef TYPE_2__ SShellObj ;
typedef TYPE_3__ SMeterObj ;
typedef TYPE_4__ SImportInfo ;
typedef TYPE_5__ SCachePool ;


 int TSDB_CODE_TOO_SLOW ;
 scalar_t__ TSDB_METER_STATE_DELETING ;
 int TSDB_METER_STATE_IMPORTING ;
 scalar_t__ TSDB_METER_STATE_READY ;
 int dError (char*,...) ;
 int dTrace (char*,size_t,int ,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int free (TYPE_4__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int taosTmrStart (void (*) (void*,void*),int,TYPE_4__*,int ) ;
 int vnodeClearMeterState (TYPE_3__*,int ) ;
 int vnodeImportData (TYPE_3__*,TYPE_4__*) ;
 TYPE_1__* vnodeList ;
 int vnodeSendShellSubmitRspMsg (TYPE_2__*,int,int ) ;
 scalar_t__ vnodeSetMeterState (TYPE_3__*,int ) ;
 int vnodeTmrCtrl ;

void vnodeProcessImportTimer(void *param, void *tmrId) {
  SImportInfo *pImport = (SImportInfo *)param;
  if (pImport == ((void*)0) || pImport->signature != param) {
    dError("import timer is messed up, signature:%p", pImport);
    return;
  }

  SMeterObj *pObj = pImport->pObj;
  SVnodeObj *pVnode = &vnodeList[pObj->vnode];
  SCachePool *pPool = (SCachePool *)pVnode->pCachePool;
  SShellObj *pShell = pImport->pShell;

  pImport->retry++;


  int32_t state = vnodeSetMeterState(pObj, TSDB_METER_STATE_IMPORTING);
  if (state >= TSDB_METER_STATE_DELETING) {
    dError("vid:%d sid:%d id:%s, meter is deleted, failed to import, state:%d",
           pObj->vnode, pObj->sid, pObj->meterId, state);
    return;
  }

  int32_t num = 0;
  pthread_mutex_lock(&pVnode->vmutex);
  num = pObj->numOfQueries;
  pthread_mutex_unlock(&pVnode->vmutex);


  int32_t commitInProcess = 0;
  pthread_mutex_lock(&pPool->vmutex);
  if (((commitInProcess = pPool->commitInProcess) == 1) || num > 0 || state != TSDB_METER_STATE_READY) {
    pthread_mutex_unlock(&pPool->vmutex);
    vnodeClearMeterState(pObj, TSDB_METER_STATE_IMPORTING);

    if (pImport->retry < 1000) {
      dTrace("vid:%d sid:%d id:%s, import failed, retry later. commit in process or queries on it, or not ready."
             "commitInProcess:%d, numOfQueries:%d, state:%d", pObj->vnode, pObj->sid, pObj->meterId,
             commitInProcess, num, state);

      taosTmrStart(vnodeProcessImportTimer, 10, pImport, vnodeTmrCtrl);
      return;
    } else {
      pShell->code = TSDB_CODE_TOO_SLOW;
    }
  } else {
    pPool->commitInProcess = 1;
    pthread_mutex_unlock(&pPool->vmutex);
    int code = vnodeImportData(pObj, pImport);
    if (pShell) {
      pShell->code = code;
      pShell->numOfTotalPoints += pImport->importedRows;
    }
  }

  vnodeClearMeterState(pObj, TSDB_METER_STATE_IMPORTING);

  pVnode->version++;


  if (pShell) {
    pShell->count--;
    if (pShell->count <= 0) vnodeSendShellSubmitRspMsg(pImport->pShell, pShell->code, pShell->numOfTotalPoints);
  }

  pImport->signature = ((void*)0);
  free(pImport->opayload);
  free(pImport);
}
