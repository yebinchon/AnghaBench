
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int param; int (* callback ) (int ) ;int pSql; struct TYPE_7__* next; int streamId; } ;
struct TYPE_6__ {int mutex; TYPE_2__* streamList; } ;
typedef TYPE_1__ STscObj ;
typedef TYPE_2__ SSqlStream ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (int ) ;
 int taos_close_stream (TYPE_2__*) ;
 int tscTrace (char*,int ,TYPE_2__*,int ) ;

void tscKillStream(STscObj *pObj, uint32_t killId) {
  pthread_mutex_lock(&pObj->mutex);

  SSqlStream *pStream = pObj->streamList;
  while (pStream) {
    if (pStream->streamId == killId) break;
    pStream = pStream->next;
  }

  pthread_mutex_unlock(&pObj->mutex);

  tscTrace("%p stream:%p is killed, streamId:%d", pStream->pSql, pStream, killId);

  taos_close_stream(pStream);
  if (pStream->callback) {
    pStream->callback(pStream->param);
  }
}
