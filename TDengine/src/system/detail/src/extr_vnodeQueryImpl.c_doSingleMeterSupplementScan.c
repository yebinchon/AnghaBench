
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int order; } ;
struct TYPE_21__ {scalar_t__ ekey; scalar_t__ skey; TYPE_1__ order; } ;
struct TYPE_20__ {int startPos; int endPos; TYPE_4__* pQuery; } ;
struct TYPE_19__ {int member_0; } ;
typedef scalar_t__ TSKEY ;
typedef TYPE_2__ SQueryStatus ;
typedef TYPE_3__ SQueryRuntimeEnv ;
typedef TYPE_4__ SQuery ;


 scalar_t__ QUERY_IS_ASC_QUERY (TYPE_4__*) ;
 int SET_MASTER_SCAN_FLAG (TYPE_3__*) ;
 int SET_SUPPLEMENT_SCAN_FLAG (TYPE_3__*) ;
 int assert (int) ;
 int disableFunctForSuppleScan (TYPE_3__*,int ) ;
 int doScanAllDataBlocks (TYPE_3__*) ;
 int enableFunctForMasterScan (TYPE_3__*,int ) ;
 scalar_t__ loadRequiredBlockIntoMem (TYPE_3__*,int *) ;
 int needSupplementaryScan (TYPE_4__*) ;
 int queryStatusRestore (TYPE_3__*,TYPE_2__*) ;
 int queryStatusSave (TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static void doSingleMeterSupplementScan(SQueryRuntimeEnv *pRuntimeEnv) {
  SQuery * pQuery = pRuntimeEnv->pQuery;
  SQueryStatus qStatus = {0};

  if (!needSupplementaryScan(pQuery)) {
    return;
  }

  SET_SUPPLEMENT_SCAN_FLAG(pRuntimeEnv);


  TSKEY endKey = loadRequiredBlockIntoMem(pRuntimeEnv, &pRuntimeEnv->endPos);
  assert((QUERY_IS_ASC_QUERY(pQuery) && endKey <= pQuery->ekey) ||
         (!QUERY_IS_ASC_QUERY(pQuery) && endKey >= pQuery->ekey));


  disableFunctForSuppleScan(pRuntimeEnv, pQuery->order.order);
  queryStatusSave(pRuntimeEnv, &qStatus);

  doScanAllDataBlocks(pRuntimeEnv);


  TSKEY actKey = loadRequiredBlockIntoMem(pRuntimeEnv, &pRuntimeEnv->startPos);
  assert((QUERY_IS_ASC_QUERY(pQuery) && actKey >= pQuery->skey) ||
         (!QUERY_IS_ASC_QUERY(pQuery) && actKey <= pQuery->skey));

  queryStatusRestore(pRuntimeEnv, &qStatus);
  enableFunctForMasterScan(pRuntimeEnv, pQuery->order.order);
  SET_MASTER_SCAN_FLAG(pRuntimeEnv);
}
