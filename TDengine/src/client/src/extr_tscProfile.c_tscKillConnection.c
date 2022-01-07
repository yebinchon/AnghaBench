
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {struct TYPE_10__* next; int thandle; } ;
struct TYPE_9__ {struct TYPE_9__* next; } ;
struct TYPE_8__ {int mutex; TYPE_2__* streamList; TYPE_3__* sqlList; } ;
typedef TYPE_1__ STscObj ;
typedef TYPE_2__ SSqlStream ;
typedef TYPE_3__ SSqlObj ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int taosStopRpcConn (int ) ;
 int taos_close (TYPE_1__*) ;
 int taos_close_stream (TYPE_2__*) ;
 int tscTrace (char*,TYPE_1__*) ;

void tscKillConnection(STscObj *pObj) {
  pthread_mutex_lock(&pObj->mutex);

  SSqlObj *pSql = pObj->sqlList;
  while (pSql) {
    taosStopRpcConn(pSql->thandle);
    pSql = pSql->next;
  }

  SSqlStream *pStream = pObj->streamList;
  while (pStream) {
    taos_close_stream(pStream);
    pStream = pStream->next;
  }

  pthread_mutex_unlock(&pObj->mutex);

  taos_close(pObj);

  tscTrace("connection:%p is killed", pObj);
}
