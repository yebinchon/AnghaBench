
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_12__ ;
typedef struct TYPE_19__ TYPE_11__ ;
typedef struct TYPE_18__ TYPE_10__ ;


typedef size_t int32_t ;
typedef int count ;
struct TYPE_24__ {TYPE_6__* pCtx; } ;
struct TYPE_29__ {scalar_t__ rawSKey; TYPE_4__ runtimeEnv; } ;
struct TYPE_28__ {scalar_t__* pNextPoint; scalar_t__* pPrevPoint; } ;
struct TYPE_25__ {size_t numOfOutputCols; scalar_t__ interpoType; TYPE_3__* pSelectExpr; int * defaultVal; } ;
struct TYPE_27__ {TYPE_9__* pMeterQuerySupporter; TYPE_5__ query; } ;
struct TYPE_26__ {scalar_t__ functionId; int numOfParams; int inputBytes; TYPE_12__* param; scalar_t__ aOutputBuf; int inputType; } ;
struct TYPE_21__ {scalar_t__ colId; size_t colIdxInBuf; } ;
struct TYPE_22__ {scalar_t__ functionId; TYPE_1__ colInfo; } ;
struct TYPE_23__ {TYPE_2__ pBase; } ;
struct TYPE_20__ {int nType; scalar_t__ i64Key; } ;
struct TYPE_19__ {TYPE_10__* pInterpDetail; } ;
struct TYPE_18__ {int primaryCol; scalar_t__ ts; scalar_t__ type; } ;
typedef scalar_t__ TSKEY ;
typedef TYPE_4__ SQueryRuntimeEnv ;
typedef TYPE_5__ SQuery ;
typedef TYPE_6__ SQLFunctionCtx ;
typedef TYPE_7__ SQInfo ;
typedef TYPE_8__ SPointInterpoSupporter ;
typedef TYPE_9__ SMeterQuerySupportObj ;
typedef TYPE_10__ SInterpInfoDetail ;
typedef TYPE_11__ SInterpInfo ;


 size_t GET_COLUMN_TYPE (TYPE_5__*,size_t) ;
 scalar_t__ PRIMARYKEY_TIMESTAMP_COL_INDEX ;
 int TSDB_DATA_TYPE_BIGINT ;
 int TSDB_DATA_TYPE_INT ;
 int TSDB_DATA_TYPE_NULL ;
 scalar_t__ TSDB_FUNC_INTERP ;
 scalar_t__ TSDB_FUNC_TAG ;
 scalar_t__ TSDB_INTERPO_SET_VALUE ;
 void* calloc (int,int) ;
 int doSetInterpVal (TYPE_6__*,scalar_t__,size_t,int,scalar_t__) ;
 scalar_t__ isNull (char*,int ) ;
 int isPointInterpoQuery (TYPE_5__*) ;
 int tVariantCreateFromBinary (TYPE_12__*,char*,int,int ) ;

void pointInterpSupporterSetData(SQInfo *pQInfo, SPointInterpoSupporter *pPointInterpSupport) {

  if (!isPointInterpoQuery(&pQInfo->query)) {
    return;
  }

  SQuery * pQuery = &pQInfo->query;
  SMeterQuerySupportObj *pSupporter = pQInfo->pMeterQuerySupporter;
  SQueryRuntimeEnv * pRuntimeEnv = &pSupporter->runtimeEnv;

  int32_t count = 1;
  TSKEY key = *(TSKEY *)pPointInterpSupport->pNextPoint[0];

  if (key == pSupporter->rawSKey) {

    for (int32_t i = 0; i < pQuery->numOfOutputCols; ++i) {
      tVariantCreateFromBinary(&pRuntimeEnv->pCtx[i].param[3], (char *)&count, sizeof(count), TSDB_DATA_TYPE_INT);

      pRuntimeEnv->pCtx[i].param[0].i64Key = key;
      pRuntimeEnv->pCtx[i].param[0].nType = TSDB_DATA_TYPE_BIGINT;
    }
  } else {

    count = 2;

    if (pQuery->interpoType == TSDB_INTERPO_SET_VALUE) {
      for (int32_t i = 0; i < pQuery->numOfOutputCols; ++i) {
        SQLFunctionCtx *pCtx = &pRuntimeEnv->pCtx[i];


        if (pCtx->functionId != TSDB_FUNC_INTERP) {
            continue;
        }

        pCtx->numOfParams = 4;

        SInterpInfo * pInterpInfo = (SInterpInfo *)pRuntimeEnv->pCtx[i].aOutputBuf;

        pInterpInfo->pInterpDetail = calloc(1, sizeof(SInterpInfoDetail));

        SInterpInfoDetail *pInterpDetail = pInterpInfo->pInterpDetail;


        if (pQuery->pSelectExpr[i].pBase.colInfo.colId == PRIMARYKEY_TIMESTAMP_COL_INDEX) {
          pInterpDetail->primaryCol = 1;
        }

        tVariantCreateFromBinary(&pCtx->param[3], (char *)&count, sizeof(count), TSDB_DATA_TYPE_INT);

        if (isNull((char *)&pQuery->defaultVal[i], pCtx->inputType)) {
          pCtx->param[1].nType = TSDB_DATA_TYPE_NULL;
        } else {
          tVariantCreateFromBinary(&pCtx->param[1], (char *)&pQuery->defaultVal[i], pCtx->inputBytes, pCtx->inputType);
        }

        pInterpDetail->ts = pSupporter->rawSKey;
        pInterpDetail->type = pQuery->interpoType;
      }
    } else {
      TSKEY prevKey = *(TSKEY *)pPointInterpSupport->pPrevPoint[0];
      TSKEY nextKey = *(TSKEY *)pPointInterpSupport->pNextPoint[0];

      for (int32_t i = 0; i < pQuery->numOfOutputCols; ++i) {
        SQLFunctionCtx *pCtx = &pRuntimeEnv->pCtx[i];


        if (pQuery->pSelectExpr[i].pBase.functionId == TSDB_FUNC_TAG) {
          continue;
        }

        int32_t colInBuf = pQuery->pSelectExpr[i].pBase.colInfo.colIdxInBuf;

        SInterpInfo *pInterpInfo = (SInterpInfo *)pRuntimeEnv->pCtx[i].aOutputBuf;

        pInterpInfo->pInterpDetail = calloc(1, sizeof(SInterpInfoDetail));
        SInterpInfoDetail *pInterpDetail = pInterpInfo->pInterpDetail;

        int32_t type = GET_COLUMN_TYPE(pQuery, i);


        if (pQuery->pSelectExpr[i].pBase.colInfo.colId == PRIMARYKEY_TIMESTAMP_COL_INDEX) {
          pInterpDetail->primaryCol = 1;
        } else {
          doSetInterpVal(pCtx, prevKey, type, 1, pPointInterpSupport->pPrevPoint[colInBuf]);
          doSetInterpVal(pCtx, nextKey, type, 2, pPointInterpSupport->pNextPoint[colInBuf]);
        }

        tVariantCreateFromBinary(&pRuntimeEnv->pCtx[i].param[3], (char *)&count, sizeof(count), TSDB_DATA_TYPE_INT);

        pInterpDetail->ts = pSupporter->rawSKey;
        pInterpDetail->type = pQuery->interpoType;
      }
    }
  }
}
