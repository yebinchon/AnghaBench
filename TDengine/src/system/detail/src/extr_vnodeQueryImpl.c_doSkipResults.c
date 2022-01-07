
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_17__ {scalar_t__ offset; } ;
struct TYPE_12__ {int order; } ;
struct TYPE_19__ {scalar_t__ pointsRead; size_t pointsOffset; size_t pointsToRead; size_t numOfOutputCols; TYPE_6__ limit; TYPE_4__** sdata; TYPE_3__* pSelectExpr; TYPE_1__ order; int over; } ;
struct TYPE_18__ {TYPE_5__* pCtx; TYPE_8__* pQuery; } ;
struct TYPE_16__ {size_t outputBytes; size_t aOutputBuf; size_t ptsOutputBuf; } ;
struct TYPE_15__ {scalar_t__ data; } ;
struct TYPE_13__ {size_t functionId; } ;
struct TYPE_14__ {TYPE_2__ pBase; } ;
typedef TYPE_7__ SQueryRuntimeEnv ;
typedef TYPE_8__ SQuery ;


 size_t GET_FORWARD_DIRECTION_FACTOR (int ) ;
 scalar_t__ QUERY_IS_ASC_QUERY (TYPE_8__*) ;
 int QUERY_RESBUF_FULL ;
 size_t TSDB_FUNC_BOTTOM ;
 size_t TSDB_FUNC_DIFF ;
 size_t TSDB_FUNC_TOP ;
 size_t TSDB_KEYSIZE ;
 int memmove (scalar_t__,scalar_t__,size_t) ;
 int resetCtxOutputBuf (TYPE_7__*) ;

void doSkipResults(SQueryRuntimeEnv *pRuntimeEnv) {
  SQuery *pQuery = pRuntimeEnv->pQuery;
  if (pQuery->pointsRead == 0 || pQuery->limit.offset == 0) {
    return;
  }

  if (pQuery->pointsRead <= pQuery->limit.offset) {
    pQuery->limit.offset -= pQuery->pointsRead;

    pQuery->pointsRead = 0;
    pQuery->pointsOffset = pQuery->pointsToRead;

    resetCtxOutputBuf(pRuntimeEnv);


    pQuery->over &= (~QUERY_RESBUF_FULL);
  } else {
    int32_t numOfSkip = (int32_t)pQuery->limit.offset;
    int32_t size = pQuery->pointsRead;

    pQuery->pointsRead -= numOfSkip;

    int32_t step = GET_FORWARD_DIRECTION_FACTOR(pQuery->order.order);

    for (int32_t i = 0; i < pQuery->numOfOutputCols; ++i) {
      int32_t functionId = pQuery->pSelectExpr[i].pBase.functionId;

      int32_t bytes = pRuntimeEnv->pCtx[i].outputBytes;

      if (QUERY_IS_ASC_QUERY(pQuery)) {
        memmove(pQuery->sdata[i]->data, pQuery->sdata[i]->data + bytes * numOfSkip, pQuery->pointsRead * bytes);
      } else {
        int32_t maxrows = pQuery->pointsToRead;

        memmove(pQuery->sdata[i]->data + (maxrows - pQuery->pointsRead) * bytes,
                pQuery->sdata[i]->data + (maxrows - size) * bytes, pQuery->pointsRead * bytes);
      }

      pRuntimeEnv->pCtx[i].aOutputBuf -= bytes * numOfSkip * step;

      if (functionId == TSDB_FUNC_DIFF || functionId == TSDB_FUNC_TOP || functionId == TSDB_FUNC_BOTTOM) {
        pRuntimeEnv->pCtx[i].ptsOutputBuf -= TSDB_KEYSIZE * numOfSkip * step;
      }
    }

    pQuery->limit.offset = 0;
  }
}
