
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * signature; } ;
struct TYPE_6__ {int sessions; int mutex; TYPE_3__* connList; int idPool; int tmrCtrl; int hash; } ;
struct TYPE_5__ {int numOfChanns; TYPE_2__* channList; int label; } ;
typedef TYPE_1__ STaosRpc ;
typedef TYPE_2__ SRpcChann ;


 int memset (TYPE_2__*,int ,int) ;
 int pthread_mutex_destroy (int *) ;
 int tError (char*,int ,int,int) ;
 int taosCleanUpStrHash (int ) ;
 int taosCloseRpcConn (void*) ;
 int taosIdPoolCleanUp (int ) ;
 int taosTmrCleanUp (int ) ;
 int tfree (TYPE_3__*) ;

void taosCloseRpcChann(void *handle, int cid) {
  STaosRpc * pServer = (STaosRpc *)handle;
  SRpcChann *pChann;

  if (pServer == ((void*)0)) return;
  if (cid >= pServer->numOfChanns || cid < 0) {
    tError("%s cid:%d, chann is out of range, max:%d", pServer->label, cid, pServer->numOfChanns);
    return;
  }

  pChann = pServer->channList + cid;

  for (int i = 0; i < pChann->sessions; ++i) {
    if (pChann->connList[i].signature != ((void*)0)) {
      taosCloseRpcConn((void *)(pChann->connList + i));
    }
  }

  taosCleanUpStrHash(pChann->hash);
  taosTmrCleanUp(pChann->tmrCtrl);
  taosIdPoolCleanUp(pChann->idPool);
  tfree(pChann->connList);
  pthread_mutex_destroy(&pChann->mutex);

  memset(pChann, 0, sizeof(SRpcChann));
}
