
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int numOfDbs; } ;
struct TYPE_12__ {int mutex; TYPE_1__ acctInfo; TYPE_3__* pHead; } ;
struct TYPE_11__ {TYPE_3__* next; TYPE_2__* prev; } ;
struct TYPE_10__ {TYPE_2__* prev; } ;
struct TYPE_9__ {TYPE_3__* next; } ;
typedef TYPE_4__ SDbObj ;
typedef TYPE_5__ SAcctObj ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int mgmtRemoveDbFromAcct(SAcctObj *pAcct, SDbObj *pDb) {
  pthread_mutex_lock(&pAcct->mutex);
  if (pDb->prev) pDb->prev->next = pDb->next;

  if (pDb->next) pDb->next->prev = pDb->prev;

  if (pDb->prev == ((void*)0)) pAcct->pHead = pDb->next;

  pAcct->acctInfo.numOfDbs--;
  pthread_mutex_unlock(&pAcct->mutex);

  return 0;
}
