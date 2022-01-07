
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_11__ {int i64Key; } ;
struct TYPE_14__ {scalar_t__ order; int size; TYPE_1__ tag; } ;
struct TYPE_13__ {int hasResult; scalar_t__ interResultBuf; } ;
struct TYPE_12__ {int * pTSBuf; } ;
typedef TYPE_2__ STSCompInfo ;
typedef int STSBuf ;
typedef TYPE_3__ SResultInfo ;
typedef TYPE_4__ SQLFunctionCtx ;


 int DATA_SET_FLAG ;
 char* GET_INPUT_CHAR (TYPE_4__*) ;
 char* GET_INPUT_CHAR_INDEX (TYPE_4__*,scalar_t__) ;
 TYPE_3__* GET_RES_INFO (TYPE_4__*) ;
 int SET_VAL (TYPE_4__*,int,int) ;
 int TSDB_KEYSIZE ;
 scalar_t__ TSQL_SO_ASC ;
 int tsBufAppend (int *,int ,int ,char const*,int) ;

__attribute__((used)) static void ts_comp_function(SQLFunctionCtx *pCtx) {
  SResultInfo *pResInfo = GET_RES_INFO(pCtx);
  STSBuf * pTSbuf = ((STSCompInfo *)(pResInfo->interResultBuf))->pTSBuf;

  const char *input = GET_INPUT_CHAR(pCtx);


  if (pCtx->order == TSQL_SO_ASC) {
    tsBufAppend(pTSbuf, 0, pCtx->tag.i64Key, input, pCtx->size * TSDB_KEYSIZE);
  } else {
    for (int32_t i = pCtx->size - 1; i >= 0; --i) {
      char *d = GET_INPUT_CHAR_INDEX(pCtx, i);
      tsBufAppend(pTSbuf, 0, pCtx->tag.i64Key, d, TSDB_KEYSIZE);
    }
  }

  SET_VAL(pCtx, pCtx->size, 1);

  pResInfo->hasResult = DATA_SET_FLAG;
}
