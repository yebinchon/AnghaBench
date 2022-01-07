
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int numOfQueries; } ;
struct TYPE_9__ {int numOfQueries; int numOfStreams; } ;
struct TYPE_12__ {int mutex; TYPE_1__ acctInfo; } ;
struct TYPE_11__ {TYPE_2__* pSList; TYPE_5__* pQList; TYPE_4__* pAcct; } ;
struct TYPE_10__ {scalar_t__ numOfStreams; } ;
typedef TYPE_2__ SSList ;
typedef int SQList ;
typedef int SQDesc ;
typedef TYPE_3__ SConnObj ;
typedef TYPE_4__ SAcctObj ;


 int memcpy (TYPE_5__*,char*,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_5__* realloc (TYPE_5__*,int) ;

int mgmtSaveQueryStreamList(char *cont, int contLen, SConnObj *pConn) {
  SAcctObj *pAcct = pConn->pAcct;

  if (contLen <= 0 || pAcct == ((void*)0)) {
    return 0;
  }

  pthread_mutex_lock(&pAcct->mutex);

  if (pConn->pQList) {
    pAcct->acctInfo.numOfQueries -= pConn->pQList->numOfQueries;
    pAcct->acctInfo.numOfStreams -= pConn->pSList->numOfStreams;
  }

  pConn->pQList = realloc(pConn->pQList, contLen);
  memcpy(pConn->pQList, cont, contLen);

  pConn->pSList = (SSList *)(((char *)pConn->pQList) + pConn->pQList->numOfQueries * sizeof(SQDesc) + sizeof(SQList));

  pAcct->acctInfo.numOfQueries += pConn->pQList->numOfQueries;
  pAcct->acctInfo.numOfStreams += pConn->pSList->numOfStreams;

  pthread_mutex_unlock(&pAcct->mutex);

  return 0;
}
