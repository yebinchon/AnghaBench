
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_14__ {TYPE_4__* pCtx; } ;
struct TYPE_13__ {char* aOutputBuf; scalar_t__ outputBytes; } ;
struct TYPE_10__ {scalar_t__ numOfOutputCols; } ;
struct TYPE_12__ {TYPE_1__ fieldsInfo; } ;
struct TYPE_11__ {scalar_t__ resBytes; scalar_t__ functionId; } ;
typedef TYPE_2__ SSqlExpr ;
typedef TYPE_3__ SSqlCmd ;
typedef TYPE_4__ SQLFunctionCtx ;
typedef TYPE_5__ SLocalReducer ;


 scalar_t__ TSDB_FUNC_TAG ;
 int assert (int) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int memcpy (char*,char*,size_t) ;
 int memset (char*,int ,size_t) ;
 TYPE_2__* tscSqlExprGet (TYPE_3__*,scalar_t__) ;

__attribute__((used)) static void fillMultiRowsOfTagsVal(SSqlCmd *pCmd, int32_t numOfRes, SLocalReducer *pLocalReducer) {
  int32_t maxBufSize = 0;
  for (int32_t k = 0; k < pCmd->fieldsInfo.numOfOutputCols; ++k) {
    SSqlExpr *pExpr = tscSqlExprGet(pCmd, k);
    if (maxBufSize < pExpr->resBytes && pExpr->functionId == TSDB_FUNC_TAG) {
      maxBufSize = pExpr->resBytes;
    }
  }

  assert(maxBufSize >= 0);

  char *buf = malloc((size_t) maxBufSize);
  for (int32_t k = 0; k < pCmd->fieldsInfo.numOfOutputCols; ++k) {
    SSqlExpr *pExpr = tscSqlExprGet(pCmd, k);
    if (pExpr->functionId != TSDB_FUNC_TAG) {
      continue;
    }

    int32_t inc = numOfRes - 1;
    memset(buf, 0, (size_t)maxBufSize);

    SQLFunctionCtx *pCtx = &pLocalReducer->pCtx[k];
    memcpy(buf, pCtx->aOutputBuf, (size_t)pCtx->outputBytes);

    for (int32_t i = 0; i < inc; ++i) {
      pCtx->aOutputBuf += pCtx->outputBytes;
      memcpy(pCtx->aOutputBuf, buf, (size_t)pCtx->outputBytes);
    }
  }

  free(buf);
}
