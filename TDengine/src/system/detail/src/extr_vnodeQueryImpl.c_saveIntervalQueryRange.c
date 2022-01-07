
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ skey; scalar_t__ lastKey; int cur; int ekey; } ;
struct TYPE_8__ {scalar_t__ skey; scalar_t__ lastKey; int ekey; } ;
struct TYPE_7__ {int * pTSBuf; TYPE_2__* pQuery; } ;
typedef TYPE_1__ SQueryRuntimeEnv ;
typedef TYPE_2__ SQuery ;
typedef TYPE_3__ SMeterQueryInfo ;


 scalar_t__ QUERY_IS_ASC_QUERY (TYPE_2__*) ;
 int assert (int) ;
 int tsBufGetCursor (int *) ;

void saveIntervalQueryRange(SQueryRuntimeEnv *pRuntimeEnv, SMeterQueryInfo *pMeterQueryInfo) {
  SQuery *pQuery = pRuntimeEnv->pQuery;

  pMeterQueryInfo->skey = pQuery->skey;
  pMeterQueryInfo->ekey = pQuery->ekey;
  pMeterQueryInfo->lastKey = pQuery->lastKey;

  assert(((pQuery->lastKey >= pQuery->skey) && QUERY_IS_ASC_QUERY(pQuery)) ||
         ((pQuery->lastKey <= pQuery->skey) && !QUERY_IS_ASC_QUERY(pQuery)));

  if (pRuntimeEnv->pTSBuf != ((void*)0)) {
    pMeterQueryInfo->cur = tsBufGetCursor(pRuntimeEnv->pTSBuf);
  }
}
