
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_50__ TYPE_9__ ;
typedef struct TYPE_49__ TYPE_8__ ;
typedef struct TYPE_48__ TYPE_7__ ;
typedef struct TYPE_47__ TYPE_6__ ;
typedef struct TYPE_46__ TYPE_5__ ;
typedef struct TYPE_45__ TYPE_4__ ;
typedef struct TYPE_44__ TYPE_3__ ;
typedef struct TYPE_43__ TYPE_30__ ;
typedef struct TYPE_42__ TYPE_2__ ;
typedef struct TYPE_41__ TYPE_1__ ;
typedef struct TYPE_40__ TYPE_19__ ;
typedef struct TYPE_39__ TYPE_18__ ;
typedef struct TYPE_38__ TYPE_17__ ;
typedef struct TYPE_37__ TYPE_16__ ;
typedef struct TYPE_36__ TYPE_15__ ;
typedef struct TYPE_35__ TYPE_14__ ;
typedef struct TYPE_34__ TYPE_13__ ;
typedef struct TYPE_33__ TYPE_12__ ;
typedef struct TYPE_32__ TYPE_11__ ;
typedef struct TYPE_31__ TYPE_10__ ;


struct TYPE_33__ {TYPE_7__* pSchema; } ;
typedef TYPE_12__ tOrderDescriptor ;
typedef size_t int32_t ;
typedef scalar_t__ int16_t ;
struct TYPE_50__ {int orderColId; int order; } ;
struct TYPE_49__ {int i64Key; int nType; } ;
struct TYPE_48__ {TYPE_6__* pFields; scalar_t__* colOffset; } ;
struct TYPE_47__ {int bytes; int type; } ;
struct TYPE_46__ {scalar_t__ data; } ;
struct TYPE_45__ {TYPE_3__* pExprs; } ;
struct TYPE_44__ {int functionId; } ;
struct TYPE_43__ {int nStatus; } ;
struct TYPE_42__ {int maxCapacity; } ;
struct TYPE_41__ {scalar_t__ data; } ;
struct TYPE_40__ {TYPE_18__* pCtx; TYPE_17__* pResInfo; TYPE_5__* pTempBuffer; TYPE_2__* resColModel; TYPE_1__* pResultBuf; } ;
struct TYPE_32__ {scalar_t__ tagsLen; scalar_t__ numOfTagCols; TYPE_18__** pTagCtxList; } ;
struct TYPE_39__ {int size; int hasNull; TYPE_11__ tagInfo; TYPE_17__* resultInfo; TYPE_8__* param; scalar_t__ aOutputBuf; scalar_t__ ptsOutputBuf; int currentStage; scalar_t__ startOffset; int outputType; int outputBytes; int inputBytes; int inputType; scalar_t__ aInputElemBuf; int functionId; int order; } ;
struct TYPE_38__ {int superTableQ; scalar_t__ bufLen; void* interResultBuf; } ;
struct TYPE_31__ {size_t numOfOutputCols; } ;
struct TYPE_37__ {TYPE_10__ fieldsInfo; TYPE_9__ order; TYPE_4__ exprsInfo; } ;
struct TYPE_36__ {size_t functionId; scalar_t__ resBytes; scalar_t__ interResBytes; } ;
struct TYPE_35__ {int * bytes; } ;
struct TYPE_34__ {int bytes; int type; } ;
typedef TYPE_13__ TAOS_FIELD ;
typedef TYPE_14__ SSqlRes ;
typedef TYPE_15__ SSqlExpr ;
typedef TYPE_16__ SSqlCmd ;
typedef TYPE_17__ SResultInfo ;
typedef TYPE_18__ SQLFunctionCtx ;
typedef TYPE_19__ SLocalReducer ;


 size_t POINTER_BYTES ;
 int SECONDARY_STAGE_MERGE ;
 int TSDB_DATA_TYPE_BIGINT ;
 int TSDB_FUNCSTATE_SELECTIVITY ;
 size_t TSDB_FUNC_BOTTOM ;
 size_t TSDB_FUNC_TAG_DUMMY ;
 size_t TSDB_FUNC_TOP ;
 size_t TSDB_FUNC_TS_DUMMY ;
 TYPE_30__* aAggs ;
 void* calloc (int,size_t) ;
 int free (TYPE_18__**) ;
 TYPE_13__* tscFieldInfoGetField (TYPE_16__*,size_t) ;
 int tscFieldInfoGetOffset (TYPE_16__*,size_t) ;
 TYPE_15__* tscSqlExprGet (TYPE_16__*,size_t) ;

__attribute__((used)) static void tscInitSqlContext(SSqlCmd *pCmd, SSqlRes *pRes, SLocalReducer *pReducer, tOrderDescriptor *pDesc) {




  for (int32_t i = 0; i < pCmd->fieldsInfo.numOfOutputCols; ++i) {
    SQLFunctionCtx *pCtx = &pReducer->pCtx[i];

    pCtx->aOutputBuf = pReducer->pResultBuf->data + tscFieldInfoGetOffset(pCmd, i) * pReducer->resColModel->maxCapacity;
    pCtx->order = pCmd->order.order;
    pCtx->functionId = pCmd->exprsInfo.pExprs[i].functionId;


    pCtx->aInputElemBuf = pReducer->pTempBuffer->data + pDesc->pSchema->colOffset[i];


    pCtx->inputType = pDesc->pSchema->pFields[i].type;
    pCtx->inputBytes = pDesc->pSchema->pFields[i].bytes;

    TAOS_FIELD *pField = tscFieldInfoGetField(pCmd, i);

    pCtx->outputBytes = pField->bytes;
    pCtx->outputType = pField->type;

    pCtx->startOffset = 0;
    pCtx->size = 1;
    pCtx->hasNull = 1;
    pCtx->currentStage = SECONDARY_STAGE_MERGE;

    pRes->bytes[i] = pField->bytes;

    SSqlExpr *pExpr = tscSqlExprGet(pCmd, i);


    int32_t functionId = pExpr->functionId;
    if (functionId == TSDB_FUNC_TOP || functionId == TSDB_FUNC_BOTTOM) {
      pCtx->ptsOutputBuf = pReducer->pCtx[0].aOutputBuf;
      pCtx->param[2].i64Key = pCmd->order.order;
      pCtx->param[2].nType = TSDB_DATA_TYPE_BIGINT;
      pCtx->param[1].i64Key = pCmd->order.orderColId;
    }

    SResultInfo *pResInfo = &pReducer->pResInfo[i];
    pResInfo->bufLen = pExpr->interResBytes;
    pResInfo->interResultBuf = calloc(1, (size_t)pResInfo->bufLen);

    pCtx->resultInfo = &pReducer->pResInfo[i];
    pCtx->resultInfo->superTableQ = 1;
  }

  int16_t n = 0;
  int16_t tagLen = 0;
  SQLFunctionCtx** pTagCtx = calloc(pCmd->fieldsInfo.numOfOutputCols, POINTER_BYTES);

  SQLFunctionCtx* pCtx = ((void*)0);
  for(int32_t i = 0; i < pCmd->fieldsInfo.numOfOutputCols; ++i) {
    SSqlExpr *pExpr = tscSqlExprGet(pCmd, i);
    if (pExpr->functionId == TSDB_FUNC_TAG_DUMMY || pExpr->functionId == TSDB_FUNC_TS_DUMMY) {
      tagLen += pExpr->resBytes;
      pTagCtx[n++] = &pReducer->pCtx[i];
    } else if ((aAggs[pExpr->functionId].nStatus & TSDB_FUNCSTATE_SELECTIVITY) != 0) {
      pCtx = &pReducer->pCtx[i];
    }
  }

  if (n == 0) {
    free(pTagCtx);
  } else {
    pCtx->tagInfo.pTagCtxList = pTagCtx;
    pCtx->tagInfo.numOfTagCols = n;
    pCtx->tagInfo.tagsLen = tagLen;
  }
}
