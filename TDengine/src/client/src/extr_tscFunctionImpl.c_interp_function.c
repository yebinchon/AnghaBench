
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_18__ {int i64Key; char* pz; } ;
struct TYPE_17__ {TYPE_3__* pInterpDetail; } ;
struct TYPE_16__ {scalar_t__ type; int primaryCol; int ts; } ;
struct TYPE_15__ {char* val; int key; } ;
struct TYPE_14__ {char* aOutputBuf; scalar_t__ inputType; scalar_t__ outputType; char size; TYPE_8__* param; int inputBytes; int outputBytes; } ;
typedef int TSKEY ;
typedef TYPE_1__ SQLFunctionCtx ;
typedef TYPE_2__ SPoint ;
typedef TYPE_3__ SInterpInfoDetail ;
typedef TYPE_4__ SInterpInfo ;


 float GET_DOUBLE_VAL (char*) ;
 char* GET_INPUT_CHAR (TYPE_1__*) ;
 int SET_VAL (TYPE_1__*,char,int) ;
 scalar_t__ TSDB_DATA_TYPE_BIGINT ;
 scalar_t__ TSDB_DATA_TYPE_DOUBLE ;
 scalar_t__ TSDB_DATA_TYPE_FLOAT ;
 scalar_t__ TSDB_DATA_TYPE_TIMESTAMP ;
 scalar_t__ TSDB_DATA_TYPE_TINYINT ;
 scalar_t__ TSDB_INTERPO_LINEAR ;
 scalar_t__ TSDB_INTERPO_NONE ;
 scalar_t__ TSDB_INTERPO_NULL ;
 scalar_t__ TSDB_INTERPO_PREV ;
 scalar_t__ TSDB_INTERPO_SET_VALUE ;
 int TSDB_KEYSIZE ;
 int assert (int) ;
 int assignVal (char*,...) ;
 int free (TYPE_3__*) ;
 scalar_t__ isNull (char*,scalar_t__) ;
 int setNull (char*,scalar_t__,int ) ;
 int tVariantDestroy (TYPE_8__*) ;
 int tVariantDump (TYPE_8__*,char*,scalar_t__) ;
 int taosDoLinearInterpolation (scalar_t__,TYPE_2__*,TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static void interp_function(SQLFunctionCtx *pCtx) {

  if (pCtx->param[3].i64Key == 1) {
    char *pData = GET_INPUT_CHAR(pCtx);
    assignVal(pCtx->aOutputBuf, pData, pCtx->inputBytes, pCtx->inputType);
  } else {




    assert(pCtx->param[3].i64Key == 2);

    SInterpInfo interpInfo = *(SInterpInfo *)pCtx->aOutputBuf;
    SInterpInfoDetail *pInfoDetail = interpInfo.pInterpDetail;


    if (pInfoDetail->type == TSDB_INTERPO_NONE) {
      pCtx->param[3].i64Key = 0;
    } else if (pInfoDetail->primaryCol == 1) {
      *(TSKEY *)pCtx->aOutputBuf = pInfoDetail->ts;
    } else {
      if (pInfoDetail->type == TSDB_INTERPO_NULL) {
        setNull(pCtx->aOutputBuf, pCtx->outputType, pCtx->outputBytes);
      } else if (pInfoDetail->type == TSDB_INTERPO_SET_VALUE) {
        tVariantDump(&pCtx->param[1], pCtx->aOutputBuf, pCtx->inputType);
      } else if (pInfoDetail->type == TSDB_INTERPO_PREV) {
        char *data = pCtx->param[1].pz;
        char *pVal = data + TSDB_KEYSIZE;

        if (pCtx->outputType == TSDB_DATA_TYPE_FLOAT) {
          float v = GET_DOUBLE_VAL(pVal);
          assignVal(pCtx->aOutputBuf, &v, pCtx->outputBytes, pCtx->outputType);
        } else {
          assignVal(pCtx->aOutputBuf, pVal, pCtx->outputBytes, pCtx->outputType);
        }

      } else if (pInfoDetail->type == TSDB_INTERPO_LINEAR) {
        char *data1 = pCtx->param[1].pz;
        char *data2 = pCtx->param[2].pz;

        char *pVal1 = data1 + TSDB_KEYSIZE;
        char *pVal2 = data2 + TSDB_KEYSIZE;

        SPoint point1 = {.key = *(TSKEY *)data1, .val = &pCtx->param[1].i64Key};
        SPoint point2 = {.key = *(TSKEY *)data2, .val = &pCtx->param[2].i64Key};

        SPoint point = {.key = pInfoDetail->ts, .val = pCtx->aOutputBuf};

        int32_t srcType = pCtx->inputType;
        if ((srcType >= TSDB_DATA_TYPE_TINYINT && srcType <= TSDB_DATA_TYPE_BIGINT) ||
            srcType == TSDB_DATA_TYPE_TIMESTAMP || srcType == TSDB_DATA_TYPE_DOUBLE) {
          point1.val = pVal1;

          point2.val = pVal2;

          if (isNull(pVal1, srcType) || isNull(pVal2, srcType)) {
            setNull(pCtx->aOutputBuf, srcType, pCtx->inputBytes);
          } else {
            taosDoLinearInterpolation(pCtx->outputType, &point1, &point2, &point);
          }
        } else if (srcType == TSDB_DATA_TYPE_FLOAT) {
          float v1 = GET_DOUBLE_VAL(pVal1);
          float v2 = GET_DOUBLE_VAL(pVal2);

          point1.val = &v1;
          point2.val = &v2;

          if (isNull(pVal1, srcType) || isNull(pVal2, srcType)) {
            setNull(pCtx->aOutputBuf, srcType, pCtx->inputBytes);
          } else {
            taosDoLinearInterpolation(pCtx->outputType, &point1, &point2, &point);
          }

        } else {
          setNull(pCtx->aOutputBuf, srcType, pCtx->inputBytes);
        }
      }
    }

    free(interpInfo.pInterpDetail);
  }

  pCtx->size = pCtx->param[3].i64Key;

  tVariantDestroy(&pCtx->param[1]);
  tVariantDestroy(&pCtx->param[2]);


  SET_VAL(pCtx, pCtx->size, 1);
}
