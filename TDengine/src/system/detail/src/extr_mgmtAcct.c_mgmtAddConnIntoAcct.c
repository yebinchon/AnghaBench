
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int numOfConns; } ;
struct TYPE_7__ {int mutex; TYPE_1__ acctInfo; TYPE_2__* pConn; } ;
struct TYPE_6__ {struct TYPE_6__* prev; struct TYPE_6__* next; TYPE_3__* pAcct; } ;
typedef TYPE_2__ SConnObj ;
typedef TYPE_3__ SAcctObj ;


 int assert (int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int mgmtAddConnIntoAcct(SConnObj *pConn) {
  SAcctObj *pAcct = pConn->pAcct;
  if (pAcct == ((void*)0)) return 0;

  pthread_mutex_lock(&pAcct->mutex);

  assert(pConn != pAcct->pConn);

  pConn->next = pAcct->pConn;
  pConn->prev = ((void*)0);

  if (pAcct->pConn) pAcct->pConn->prev = pConn;

  pAcct->pConn = pConn;
  pAcct->acctInfo.numOfConns++;

  pthread_mutex_unlock(&pAcct->mutex);

  return 0;
}
