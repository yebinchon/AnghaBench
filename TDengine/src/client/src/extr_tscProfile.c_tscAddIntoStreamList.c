
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int listed; scalar_t__ streamId; struct TYPE_7__* prev; struct TYPE_7__* next; TYPE_1__* pSql; } ;
struct TYPE_6__ {int mutex; TYPE_3__* streamList; } ;
struct TYPE_5__ {TYPE_2__* pTscObj; } ;
typedef TYPE_2__ STscObj ;
typedef TYPE_3__ SSqlStream ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void tscAddIntoStreamList(SSqlStream *pStream) {
  static uint32_t streamId = 1;
  STscObj * pObj = pStream->pSql->pTscObj;

  pthread_mutex_lock(&pObj->mutex);

  pStream->next = pObj->streamList;
  if (pObj->streamList) pObj->streamList->prev = pStream;
  pObj->streamList = pStream;
  pStream->streamId = streamId++;

  pthread_mutex_unlock(&pObj->mutex);

  pStream->listed = 1;
}
