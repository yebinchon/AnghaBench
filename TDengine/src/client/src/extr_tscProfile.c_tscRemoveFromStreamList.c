
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {TYPE_3__* pTscObj; } ;
struct TYPE_11__ {scalar_t__ listed; TYPE_2__* prev; TYPE_1__* next; } ;
struct TYPE_10__ {int mutex; TYPE_1__* streamList; } ;
struct TYPE_9__ {TYPE_1__* next; } ;
struct TYPE_8__ {TYPE_2__* prev; } ;
typedef TYPE_3__ STscObj ;
typedef TYPE_4__ SSqlStream ;
typedef TYPE_5__ SSqlObj ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void tscRemoveFromStreamList(SSqlStream *pStream, SSqlObj *pSqlObj) {
  if (pStream->listed == 0) return;

  STscObj *pObj = pSqlObj->pTscObj;

  pthread_mutex_lock(&pObj->mutex);

  if (pStream->prev)
    pStream->prev->next = pStream->next;
  else
    pObj->streamList = pStream->next;

  if (pStream->next) pStream->next->prev = pStream->prev;

  pthread_mutex_unlock(&pObj->mutex);

  pStream->next = ((void*)0);
  pStream->prev = ((void*)0);

  pStream->listed = 0;
}
