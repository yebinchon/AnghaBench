
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int order; } ;
struct TYPE_14__ {TYPE_1__ cur; } ;
struct TYPE_13__ {int skey; int lastKey; int ekey; int over; } ;
struct TYPE_12__ {int endPos; int startPos; TYPE_5__* pTSBuf; int nextPos; TYPE_4__* pQuery; } ;
struct TYPE_11__ {int cur; int end; int next; int start; int lastKey; int overStatus; } ;
typedef TYPE_2__ SQueryStatus ;
typedef TYPE_3__ SQueryRuntimeEnv ;
typedef TYPE_4__ SQuery ;


 int QUERY_NOT_COMPLETED ;
 int SWAP (int ,int ,int ) ;
 int TSKEY ;
 int setQueryStatus (TYPE_4__*,int ) ;
 int tsBufGetCursor (TYPE_5__*) ;
 int tsBufNextPos (TYPE_5__*) ;

__attribute__((used)) static void queryStatusSave(SQueryRuntimeEnv *pRuntimeEnv, SQueryStatus *pStatus) {
  SQuery *pQuery = pRuntimeEnv->pQuery;

  pStatus->overStatus = pQuery->over;
  pStatus->lastKey = pQuery->lastKey;

  pStatus->start = pRuntimeEnv->startPos;
  pStatus->next = pRuntimeEnv->nextPos;
  pStatus->end = pRuntimeEnv->endPos;

  pStatus->cur = tsBufGetCursor(pRuntimeEnv->pTSBuf);

  if (pRuntimeEnv->pTSBuf) {
    pRuntimeEnv->pTSBuf->cur.order ^= 1;
    tsBufNextPos(pRuntimeEnv->pTSBuf);
  }

  setQueryStatus(pQuery, QUERY_NOT_COMPLETED);

  SWAP(pQuery->skey, pQuery->ekey, TSKEY);
  pQuery->lastKey = pQuery->skey;
  pRuntimeEnv->startPos = pRuntimeEnv->endPos;
}
