
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_16__ {scalar_t__ size; scalar_t__ keyLast; scalar_t__ keyFirst; } ;
struct TYPE_13__ {scalar_t__ offset; } ;
struct TYPE_15__ {scalar_t__ pos; scalar_t__ ekey; TYPE_1__ limit; int slot; } ;
struct TYPE_14__ {int * pMeterObj; TYPE_3__* pQuery; } ;
typedef TYPE_2__ SQueryRuntimeEnv ;
typedef TYPE_3__ SQuery ;
typedef int SMeterObj ;
typedef TYPE_4__ SBlockInfo ;


 scalar_t__ BLK_CACHE_BLOCK ;
 scalar_t__ BLK_FILE_BLOCK ;
 scalar_t__ IS_DISK_DATA_BLOCK (TYPE_3__*) ;
 scalar_t__ QUERY_IS_ASC_QUERY (TYPE_3__*) ;
 int doSkipDataBlock (TYPE_2__*) ;
 TYPE_4__ getBlockBasicInfo (void*,scalar_t__) ;
 void* getGenericDataBlock (int *,TYPE_3__*,int ) ;
 int updateOffsetVal (TYPE_2__*,TYPE_4__*,void*) ;

void forwardQueryStartPosition(SQueryRuntimeEnv *pRuntimeEnv) {
  SQuery * pQuery = pRuntimeEnv->pQuery;
  SMeterObj *pMeterObj = pRuntimeEnv->pMeterObj;

  if (pQuery->limit.offset <= 0) {
    return;
  }

  void *pBlock = getGenericDataBlock(pMeterObj, pQuery, pQuery->slot);

  int32_t blockType = (IS_DISK_DATA_BLOCK(pQuery)) ? BLK_FILE_BLOCK : BLK_CACHE_BLOCK;
  SBlockInfo blockInfo = getBlockBasicInfo(pBlock, blockType);


  int32_t maxReads = (QUERY_IS_ASC_QUERY(pQuery)) ? blockInfo.size - pQuery->pos : pQuery->pos + 1;

  if (pQuery->limit.offset < maxReads || (pQuery->ekey <= blockInfo.keyLast && QUERY_IS_ASC_QUERY(pQuery)) ||
      (pQuery->ekey >= blockInfo.keyFirst && !QUERY_IS_ASC_QUERY(pQuery))) {
    updateOffsetVal(pRuntimeEnv, &blockInfo, pBlock);
  } else {
    pQuery->limit.offset -= maxReads;
    doSkipDataBlock(pRuntimeEnv);
  }
}
