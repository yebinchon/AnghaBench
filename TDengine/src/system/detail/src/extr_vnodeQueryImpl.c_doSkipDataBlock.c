
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
typedef int __block_search_fn_t ;
struct TYPE_22__ {scalar_t__ size; scalar_t__ keyLast; scalar_t__ keyFirst; } ;
struct TYPE_21__ {size_t searchAlgorithm; } ;
struct TYPE_18__ {scalar_t__ offset; } ;
struct TYPE_17__ {int order; } ;
struct TYPE_20__ {scalar_t__ pos; scalar_t__ ekey; scalar_t__ lastKey; TYPE_2__ limit; int slot; int over; TYPE_1__ order; } ;
struct TYPE_19__ {TYPE_4__* pQuery; TYPE_5__* pMeterObj; } ;
typedef TYPE_3__ SQueryRuntimeEnv ;
typedef TYPE_4__ SQuery ;
typedef TYPE_5__ SMeterObj ;
typedef TYPE_6__ SBlockInfo ;


 scalar_t__ BLK_CACHE_BLOCK ;
 scalar_t__ BLK_FILE_BLOCK ;
 scalar_t__ GET_FORWARD_DIRECTION_FACTOR (int ) ;
 int GET_QINFO_ADDR (TYPE_4__*) ;
 scalar_t__ IS_DISK_DATA_BLOCK (TYPE_4__*) ;
 scalar_t__ QUERY_IS_ASC_QUERY (TYPE_4__*) ;
 int QUERY_NO_DATA_TO_CHECK ;
 scalar_t__ Q_STATUS_EQUAL (int ,int ) ;
 int assert (int) ;
 TYPE_6__ getBlockBasicInfo (void*,scalar_t__) ;
 void* getGenericDataBlock (TYPE_5__*,TYPE_4__*,int ) ;
 int moveToNextBlock (TYPE_3__*,scalar_t__,int ,int) ;
 int qTrace (char*,int ,scalar_t__,scalar_t__) ;
 int updateOffsetVal (TYPE_3__*,TYPE_6__*,void*) ;
 int * vnodeSearchKeyFunc ;

__attribute__((used)) static int32_t doSkipDataBlock(SQueryRuntimeEnv *pRuntimeEnv) {
  SMeterObj * pMeterObj = pRuntimeEnv->pMeterObj;
  SQuery * pQuery = pRuntimeEnv->pQuery;
  int32_t step = GET_FORWARD_DIRECTION_FACTOR(pQuery->order.order);
  __block_search_fn_t searchFn = vnodeSearchKeyFunc[pMeterObj->searchAlgorithm];

  while (1) {
    moveToNextBlock(pRuntimeEnv, step, searchFn, 0);
    if (Q_STATUS_EQUAL(pQuery->over, QUERY_NO_DATA_TO_CHECK)) {
      break;
    }

    void *pBlock = getGenericDataBlock(pMeterObj, pQuery, pQuery->slot);
    assert(pBlock != ((void*)0));

    int32_t blockType = IS_DISK_DATA_BLOCK(pQuery) ? BLK_FILE_BLOCK : BLK_CACHE_BLOCK;
    SBlockInfo blockInfo = getBlockBasicInfo(pBlock, blockType);

    int32_t maxReads = (QUERY_IS_ASC_QUERY(pQuery)) ? blockInfo.size - pQuery->pos : pQuery->pos + 1;
    assert(maxReads >= 0);

    if (pQuery->limit.offset < maxReads || (pQuery->ekey <= blockInfo.keyLast && QUERY_IS_ASC_QUERY(pQuery)) ||
        (pQuery->ekey >= blockInfo.keyFirst && !QUERY_IS_ASC_QUERY(pQuery))) {
      updateOffsetVal(pRuntimeEnv, &blockInfo, pBlock);
      break;
    } else {
      pQuery->limit.offset -= maxReads;
      pQuery->lastKey = (QUERY_IS_ASC_QUERY(pQuery)) ? blockInfo.keyLast : blockInfo.keyFirst;
      pQuery->lastKey += step;

      qTrace("QInfo:%p skip rows:%d, offset:%lld", GET_QINFO_ADDR(pQuery), maxReads, pQuery->limit.offset);
    }
  }

  return 0;
}
