
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ listed; TYPE_2__* prev; TYPE_1__* next; TYPE_3__* pTscObj; } ;
struct TYPE_10__ {int mutex; TYPE_1__* sqlList; } ;
struct TYPE_9__ {TYPE_1__* next; } ;
struct TYPE_8__ {TYPE_2__* prev; } ;
typedef TYPE_3__ STscObj ;
typedef TYPE_4__ SSqlObj ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int tscSaveSlowQuery (TYPE_4__*) ;
 int tscTrace (char*,TYPE_4__*) ;

void tscRemoveFromSqlList(SSqlObj *pSql) {
  STscObj *pObj = pSql->pTscObj;
  if (pSql->listed == 0) return;

  pthread_mutex_lock(&pObj->mutex);

  if (pSql->prev)
    pSql->prev->next = pSql->next;
  else
    pObj->sqlList = pSql->next;

  if (pSql->next) pSql->next->prev = pSql->prev;

  pthread_mutex_unlock(&pObj->mutex);

  pSql->next = ((void*)0);
  pSql->prev = ((void*)0);
  pSql->listed = 0;

  tscSaveSlowQuery(pSql);
  tscTrace("%p removed from sqlList", pSql);
}
