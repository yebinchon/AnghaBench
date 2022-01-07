
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int numOfStreams; int numOfConns; } ;
struct TYPE_19__ {int mutex; TYPE_6__* pConn; TYPE_1__ acctInfo; } ;
struct TYPE_18__ {int user; int port; int ip; } ;
struct TYPE_17__ {struct TYPE_17__* next; TYPE_3__* pSList; TYPE_2__* pUser; int port; int ip; TYPE_8__* pAcct; } ;
struct TYPE_16__ {TYPE_4__* pNode; } ;
struct TYPE_15__ {scalar_t__ numOfStreams; TYPE_7__** cdesc; TYPE_7__* connInfo; int * sdesc; scalar_t__ index; } ;
struct TYPE_14__ {int numOfStreams; int sdesc; } ;
struct TYPE_13__ {int user; } ;
typedef TYPE_4__ SStreamShow ;
typedef TYPE_5__ SShowObj ;
typedef int SSDesc ;
typedef int SQueryShow ;
typedef TYPE_6__ SConnObj ;
typedef TYPE_7__ SCDesc ;
typedef TYPE_8__ SAcctObj ;


 TYPE_4__* malloc (int) ;
 int memcpy (int *,int ,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int strcpy (int ,int ) ;

int mgmtGetStreams(SShowObj *pShow, SConnObj *pConn) {
  SAcctObj * pAcct = pConn->pAcct;
  SStreamShow *pStreamShow;

  pthread_mutex_lock(&pAcct->mutex);

  pStreamShow = malloc(sizeof(SSDesc) * pAcct->acctInfo.numOfStreams + sizeof(SQueryShow));
  pStreamShow->numOfStreams = 0;
  pStreamShow->index = 0;
  pStreamShow->connInfo = ((void*)0);
  pStreamShow->cdesc = ((void*)0);

  if (pAcct->acctInfo.numOfStreams > 0) {
    pStreamShow->connInfo = (SCDesc *)malloc(pAcct->acctInfo.numOfConns * sizeof(SCDesc));
    pStreamShow->cdesc = (SCDesc **)malloc(pAcct->acctInfo.numOfStreams * sizeof(SCDesc *));

    pConn = pAcct->pConn;
    SSDesc * pSdesc = pStreamShow->sdesc;
    SCDesc * pCDesc = pStreamShow->connInfo;
    SCDesc **ppCDesc = pStreamShow->cdesc;

    while (pConn) {
      if (pConn->pSList && pConn->pSList->numOfStreams > 0) {
        pCDesc->ip = pConn->ip;
        pCDesc->port = pConn->port;
        strcpy(pCDesc->user, pConn->pUser->user);

        memcpy(pSdesc, pConn->pSList->sdesc, sizeof(SSDesc) * pConn->pSList->numOfStreams);
        pSdesc += pConn->pSList->numOfStreams;
        pStreamShow->numOfStreams += pConn->pSList->numOfStreams;
        for (int i = 0; i < pConn->pSList->numOfStreams; ++i, ++ppCDesc) *ppCDesc = pCDesc;

        pCDesc++;
      }
      pConn = pConn->next;
    }
  }

  pthread_mutex_unlock(&pAcct->mutex);



  pShow->pNode = pStreamShow;

  return 0;
}
