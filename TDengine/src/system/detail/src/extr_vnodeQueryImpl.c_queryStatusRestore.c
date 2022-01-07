
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int over; int lastKey; int ekey; int skey; } ;
struct TYPE_7__ {int pTSBuf; int endPos; int nextPos; int startPos; TYPE_3__* pQuery; } ;
struct TYPE_6__ {int cur; int end; int next; int start; int overStatus; int lastKey; } ;
typedef TYPE_1__ SQueryStatus ;
typedef TYPE_2__ SQueryRuntimeEnv ;
typedef TYPE_3__ SQuery ;


 int SWAP (int ,int ,int ) ;
 int TSKEY ;
 int tsBufSetCursor (int ,int *) ;

__attribute__((used)) static void queryStatusRestore(SQueryRuntimeEnv *pRuntimeEnv, SQueryStatus *pStatus) {
  SQuery *pQuery = pRuntimeEnv->pQuery;
  SWAP(pQuery->skey, pQuery->ekey, TSKEY);

  pQuery->lastKey = pStatus->lastKey;

  pQuery->over = pStatus->overStatus;

  pRuntimeEnv->startPos = pStatus->start;
  pRuntimeEnv->nextPos = pStatus->next;
  pRuntimeEnv->endPos = pStatus->end;

  tsBufSetCursor(pRuntimeEnv->pTSBuf, &pStatus->cur);
}
