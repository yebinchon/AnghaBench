
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int pChann ;
struct TYPE_5__ {int sessions; void* qhandle; int mutex; int * hash; int * tmrCtrl; int * idPool; int * connList; } ;
struct TYPE_4__ {int numOfChanns; scalar_t__ idMgmt; void* qhandle; int label; TYPE_2__* channList; } ;
typedef TYPE_1__ STaosRpc ;
typedef int SRpcConn ;
typedef TYPE_2__ SRpcChann ;


 scalar_t__ TAOS_ID_FREE ;
 int TSDB_CODE_SUCCESS ;
 scalar_t__ calloc (int,size_t) ;
 int memset (TYPE_2__*,int ,int) ;
 int pthread_mutex_init (int *,int *) ;
 int tError (char*,int ,int,...) ;
 int taosHashString ;
 int * taosInitIdPool (int) ;
 int * taosInitStrHash (int,int,int ) ;
 int * taosTmrInit (int,int,int,int ) ;

int taosOpenRpcChannWithQ(void *handle, int cid, int sessions, void *qhandle) {
  STaosRpc * pServer = (STaosRpc *)handle;
  SRpcChann *pChann;

  if (pServer == ((void*)0)) return -1;
  if (cid >= pServer->numOfChanns || cid < 0) {
    tError("%s: cid:%d, chann is out of range, max:%d", pServer->label, cid, pServer->numOfChanns);
    return -1;
  }

  pChann = pServer->channList + cid;
  memset(pChann, 0, sizeof(SRpcChann));

  size_t size = sizeof(SRpcConn) * sessions;
  pChann->connList = (SRpcConn *)calloc(1, size);
  if (pChann->connList == ((void*)0)) {
    tError("%s cid:%d, failed to allocate memory for taos connections, size:%d", pServer->label, cid, size);
    return -1;
  }

  if (pServer->idMgmt == TAOS_ID_FREE) {
    pChann->idPool = taosInitIdPool(sessions);
    if (pChann->idPool == ((void*)0)) {
      tError("%s cid:%d, failed to init ID pool", pServer->label, cid);
      return -1;
    }
  }

  pChann->tmrCtrl = taosTmrInit(sessions * 2 + 1, 50, 10000, pServer->label);
  if (pChann->tmrCtrl == ((void*)0)) {
    tError("%s cid:%d, failed to init timers", pServer->label, cid);
    return -1;
  }

  pChann->hash = taosInitStrHash(sessions, sizeof(pChann), taosHashString);
  if (pChann->hash == ((void*)0)) {
    tError("%s cid:%d, failed to init string hash", pServer->label, cid);
    return -1;
  }

  pthread_mutex_init(&pChann->mutex, ((void*)0));
  pChann->sessions = sessions;

  pChann->qhandle = qhandle ? qhandle : pServer->qhandle;

  return TSDB_CODE_SUCCESS;
}
