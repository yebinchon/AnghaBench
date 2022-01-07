
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int numOfDbs; } ;
struct TYPE_8__ {int mutex; TYPE_1__ acctInfo; TYPE_2__* pHead; } ;
struct TYPE_7__ {struct TYPE_7__* prev; struct TYPE_7__* next; } ;
typedef TYPE_2__ SDbObj ;
typedef TYPE_3__ SAcctObj ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int mgmtAddDbIntoAcct(SAcctObj *pAcct, SDbObj *pDb) {
  pthread_mutex_lock(&pAcct->mutex);
  pDb->next = pAcct->pHead;
  pDb->prev = ((void*)0);

  if (pAcct->pHead) pAcct->pHead->prev = pDb;

  pAcct->pHead = pDb;
  pAcct->acctInfo.numOfDbs++;
  pthread_mutex_unlock(&pAcct->mutex);

  return 0;
}
