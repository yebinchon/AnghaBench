
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int numOfUsers; } ;
struct TYPE_12__ {int mutex; TYPE_1__ acctInfo; TYPE_3__* pUser; } ;
struct TYPE_11__ {TYPE_3__* next; TYPE_2__* prev; } ;
struct TYPE_10__ {TYPE_2__* prev; } ;
struct TYPE_9__ {TYPE_3__* next; } ;
typedef TYPE_4__ SUserObj ;
typedef TYPE_5__ SAcctObj ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int mgmtRemoveUserFromAcct(SAcctObj *pAcct, SUserObj *pUser) {
  pthread_mutex_lock(&pAcct->mutex);
  if (pUser->prev) pUser->prev->next = pUser->next;

  if (pUser->next) pUser->next->prev = pUser->prev;

  if (pUser->prev == ((void*)0)) pAcct->pUser = pUser->next;

  pAcct->acctInfo.numOfUsers--;
  pthread_mutex_unlock(&pAcct->mutex);

  return 0;
}
