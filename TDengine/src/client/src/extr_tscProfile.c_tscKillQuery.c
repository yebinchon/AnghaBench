
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int thandle; struct TYPE_7__* next; int queryId; } ;
struct TYPE_6__ {int mutex; TYPE_2__* sqlList; } ;
typedef TYPE_1__ STscObj ;
typedef TYPE_2__ SSqlObj ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int taos_stop_query (TYPE_2__*) ;
 int tscTrace (char*,TYPE_2__*,int ,int ) ;

void tscKillQuery(STscObj *pObj, uint32_t killId) {
  pthread_mutex_lock(&pObj->mutex);

  SSqlObj *pSql = pObj->sqlList;
  while (pSql) {
    if (pSql->queryId == killId) break;
    pSql = pSql->next;
  }

  pthread_mutex_unlock(&pObj->mutex);

  if (pSql == ((void*)0)) return;

  tscTrace("%p query is killed, queryId:%d thandle:%p", pSql, killId, pSql->thandle);
  taos_stop_query(pSql);
}
