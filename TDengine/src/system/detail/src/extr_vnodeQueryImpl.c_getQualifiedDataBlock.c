
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
typedef scalar_t__ (* __block_search_fn_t ) (int ,int ,scalar_t__,int ) ;
struct TYPE_23__ {scalar_t__ keyLast; scalar_t__ keyFirst; } ;
struct TYPE_22__ {int numOfPoints; } ;
struct TYPE_21__ {int data; } ;
struct TYPE_20__ {int vnode; } ;
struct TYPE_17__ {int order; } ;
struct TYPE_19__ {int slot; scalar_t__ lastKey; scalar_t__ fileId; scalar_t__ numOfBlocks; scalar_t__ pos; TYPE_1__ order; int * pFields; TYPE_7__* pBlock; } ;
struct TYPE_18__ {int blockStatus; TYPE_5__* primaryColBuffer; TYPE_3__* pQuery; } ;
typedef scalar_t__ TSKEY ;
typedef TYPE_2__ SQueryRuntimeEnv ;
typedef TYPE_3__ SQuery ;
typedef TYPE_4__ SMeterObj ;
typedef TYPE_5__ SData ;
typedef TYPE_6__ SCompBlock ;


 int GET_QINFO_ADDR (TYPE_3__*) ;
 scalar_t__ QUERY_ASC_FORWARD_STEP ;
 scalar_t__ QUERY_DESC_FORWARD_STEP ;
 scalar_t__ QUERY_RANGE_GREATER_EQUAL ;
 int SET_DATA_BLOCK_LOADED (int ) ;
 int assert (int) ;
 scalar_t__ binarySearchForBlock (TYPE_3__*,scalar_t__) ;
 int dError (char*,int ,scalar_t__,scalar_t__,scalar_t__) ;
 TYPE_6__* getDiskDataBlock (TYPE_3__*,scalar_t__) ;
 scalar_t__ getFileIdFromKey (int ,scalar_t__) ;
 scalar_t__ getNextDataFileCompInfo (TYPE_2__*,TYPE_4__*,scalar_t__) ;
 scalar_t__ loadDataBlockIntoMem (TYPE_7__*,int *,TYPE_2__*,scalar_t__,int,int) ;

__attribute__((used)) static bool getQualifiedDataBlock(SMeterObj *pMeterObj, SQueryRuntimeEnv *pRuntimeEnv, int32_t type,
                                  __block_search_fn_t searchFn) {
  int32_t blkIdx = -1;
  int32_t fid = -1;
  int32_t step = (type == QUERY_RANGE_GREATER_EQUAL) ? QUERY_ASC_FORWARD_STEP : QUERY_DESC_FORWARD_STEP;

  SQuery *pQuery = pRuntimeEnv->pQuery;
  pQuery->slot = -1;

  TSKEY key = pQuery->lastKey;

  SData *primaryColBuffer = pRuntimeEnv->primaryColBuffer;
  pQuery->fileId = getFileIdFromKey(pMeterObj->vnode, key) - step;

  while (1) {
    if ((fid = getNextDataFileCompInfo(pRuntimeEnv, pMeterObj, step)) < 0) {
      break;
    }

    blkIdx = binarySearchForBlock(pQuery, key);

    if (type == QUERY_RANGE_GREATER_EQUAL) {
      if (key <= pQuery->pBlock[blkIdx].keyLast) {
        break;
      } else {
        blkIdx = -1;
      }
    } else {
      if (key >= pQuery->pBlock[blkIdx].keyFirst) {
        break;
      } else {
        blkIdx = -1;
      }
    }
  }


  if (blkIdx == -1) {
    return 0;
  }

  assert(blkIdx >= 0 && blkIdx < pQuery->numOfBlocks);


  bool blockLoaded = 0;
  while (blkIdx < pQuery->numOfBlocks) {
    pQuery->slot = blkIdx;
    if (loadDataBlockIntoMem(&pQuery->pBlock[pQuery->slot], &pQuery->pFields[pQuery->slot], pRuntimeEnv, fid, 1,
                             1) == 0) {
      SET_DATA_BLOCK_LOADED(pRuntimeEnv->blockStatus);
      blockLoaded = 1;
      break;
    }

    dError("QInfo:%p fileId:%d total numOfBlks:%d blockId:%d into memory failed due to error in disk files",
           GET_QINFO_ADDR(pQuery), pQuery->fileId, pQuery->numOfBlocks, blkIdx);
    blkIdx += step;
  }


  if (blockLoaded == 0) {
    return 0;
  }

  SCompBlock *pBlocks = getDiskDataBlock(pQuery, blkIdx);


  pQuery->pos = searchFn(primaryColBuffer->data, pBlocks->numOfPoints, key, pQuery->order.order);
  assert(pQuery->pos >= 0 && pQuery->fileId >= 0 && pQuery->slot >= 0);

  return 1;
}
