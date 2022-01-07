
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_22__ {int* elemSize; char** data; size_t numOfCols; scalar_t__ offset; TYPE_3__* pExpr; } ;
struct TYPE_21__ {size_t colIdxInBuf; size_t colIdx; int colId; int flag; } ;
struct TYPE_20__ {int bytes; int type; int colId; } ;
struct TYPE_19__ {size_t startOffset; int inputBytes; int inputType; } ;
struct TYPE_18__ {size_t pos; size_t numOfCols; TYPE_3__* pSelectExpr; TYPE_1__* colList; } ;
struct TYPE_17__ {TYPE_6__* pCtx; TYPE_5__* pQuery; } ;
struct TYPE_15__ {size_t functionId; TYPE_8__ colInfo; } ;
struct TYPE_16__ {TYPE_2__ pBase; } ;
struct TYPE_14__ {size_t colIdxInBuf; size_t colIdx; TYPE_7__ data; } ;
typedef TYPE_4__ SQueryRuntimeEnv ;
typedef TYPE_5__ SQuery ;
typedef TYPE_6__ SQLFunctionCtx ;
typedef TYPE_7__ SColumnInfo ;
typedef TYPE_8__ SColIndexEx ;
typedef TYPE_9__ SArithmeticSupport ;


 scalar_t__ QUERY_IS_ASC_QUERY (TYPE_5__*) ;
 scalar_t__ TSDB_COL_IS_TAG (int ) ;
 size_t TSDB_FUNC_ARITHM ;
 char* doGetDataBlocks (int,TYPE_4__*,char*,size_t,int ,int ,int,size_t) ;

__attribute__((used)) static char *getDataBlocks(SQueryRuntimeEnv *pRuntimeEnv, char *data, SArithmeticSupport *sas, int32_t col,
                           int32_t size, bool isDiskFileBlock) {
  SQuery * pQuery = pRuntimeEnv->pQuery;
  SQLFunctionCtx *pCtx = pRuntimeEnv->pCtx;

  char *dataBlock = ((void*)0);

  int32_t functionId = pQuery->pSelectExpr[col].pBase.functionId;

  if (functionId == TSDB_FUNC_ARITHM) {
    sas->pExpr = &pQuery->pSelectExpr[col];


    if (QUERY_IS_ASC_QUERY(pQuery)) {
      pCtx->startOffset = pQuery->pos;
    } else {
      pCtx->startOffset = pQuery->pos - (size - 1);
    }

    for (int32_t i = 0; i < pQuery->numOfCols; ++i) {
      int32_t colIdx = isDiskFileBlock ? pQuery->colList[i].colIdxInBuf : pQuery->colList[i].colIdx;

      SColumnInfo *pColMsg = &pQuery->colList[i].data;
      char * pData = doGetDataBlocks(isDiskFileBlock, pRuntimeEnv, data, colIdx, pColMsg->colId, pColMsg->type,
                                    pColMsg->bytes, pQuery->colList[i].colIdxInBuf);

      sas->elemSize[i] = pColMsg->bytes;
      sas->data[i] = pData + pCtx->startOffset * sas->elemSize[i];
    }
    sas->numOfCols = pQuery->numOfCols;
    sas->offset = 0;
  } else {
    SColIndexEx *pCol = &pQuery->pSelectExpr[col].pBase.colInfo;
    int32_t colIdx = isDiskFileBlock ? pCol->colIdxInBuf : pCol->colIdx;

    if (TSDB_COL_IS_TAG(pCol->flag)) {
      dataBlock = ((void*)0);
    } else {





      dataBlock = doGetDataBlocks(isDiskFileBlock, pRuntimeEnv, data, colIdx, pCol->colId, pCtx[col].inputType,
                                  pCtx[col].inputBytes, pCol->colIdxInBuf);
    }
  }

  return dataBlock;
}
