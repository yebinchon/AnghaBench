
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int numOfStreams; int numOfQueries; int numOfConns; } ;
struct TYPE_15__ {int mutex; TYPE_2__ acctInfo; TYPE_4__* pConn; } ;
struct TYPE_14__ {TYPE_5__* prev; TYPE_4__* next; TYPE_3__* pSList; TYPE_1__* pQList; TYPE_7__* pAcct; } ;
struct TYPE_13__ {TYPE_4__* next; } ;
struct TYPE_12__ {TYPE_5__* prev; } ;
struct TYPE_11__ {scalar_t__ numOfStreams; } ;
struct TYPE_9__ {scalar_t__ numOfQueries; } ;
typedef TYPE_6__ SConnObj ;
typedef TYPE_7__ SAcctObj ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int mgmtRemoveConnFromAcct(SConnObj *pConn) {
  SAcctObj *pAcct = pConn->pAcct;
  if (pAcct == ((void*)0)) return 0;

  pthread_mutex_lock(&pAcct->mutex);

  if (pConn->prev) pConn->prev->next = pConn->next;

  if (pConn->next) pConn->next->prev = pConn->prev;

  if (pConn->prev == ((void*)0)) pAcct->pConn = pConn->next;

  pAcct->acctInfo.numOfConns--;


  if (pConn->pQList) {
    pAcct->acctInfo.numOfQueries -= pConn->pQList->numOfQueries;
    pAcct->acctInfo.numOfStreams -= pConn->pSList->numOfStreams;
  }

  pthread_mutex_unlock(&pAcct->mutex);

  pConn->next = ((void*)0);
  pConn->prev = ((void*)0);

  return 0;
}
