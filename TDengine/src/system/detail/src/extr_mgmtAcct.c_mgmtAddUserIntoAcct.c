
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int numOfUsers; } ;
struct TYPE_8__ {int mutex; TYPE_1__ acctInfo; TYPE_2__* pUser; } ;
struct TYPE_7__ {struct TYPE_7__* prev; struct TYPE_7__* next; } ;
typedef TYPE_2__ SUserObj ;
typedef TYPE_3__ SAcctObj ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int mgmtAddUserIntoAcct(SAcctObj *pAcct, SUserObj *pUser) {
  pthread_mutex_lock(&pAcct->mutex);
  pUser->next = pAcct->pUser;
  pUser->prev = ((void*)0);

  if (pAcct->pUser) pAcct->pUser->prev = pUser;

  pAcct->pUser = pUser;
  pAcct->acctInfo.numOfUsers++;
  pthread_mutex_unlock(&pAcct->mutex);

  return 0;
}
