
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ inputType; scalar_t__ aInputElemBuf; scalar_t__ inputBytes; } ;
struct TYPE_8__ {int hasResult; int interResultBuf; } ;
struct TYPE_7__ {int hasResult; } ;
typedef TYPE_1__ STwaInfo ;
typedef TYPE_2__ SResultInfo ;
typedef TYPE_3__ SQLFunctionCtx ;


 TYPE_2__* GET_RES_INFO (TYPE_3__*) ;
 scalar_t__ TSDB_DATA_TYPE_BINARY ;
 int assert (int) ;
 int memcpy (int ,scalar_t__,size_t) ;

void twa_function_copy(SQLFunctionCtx *pCtx) {
  assert(pCtx->inputType == TSDB_DATA_TYPE_BINARY);
  SResultInfo *pResInfo = GET_RES_INFO(pCtx);

  memcpy(pResInfo->interResultBuf, pCtx->aInputElemBuf, (size_t)pCtx->inputBytes);
  pResInfo->hasResult = ((STwaInfo *)pCtx->aInputElemBuf)->hasResult;
}
