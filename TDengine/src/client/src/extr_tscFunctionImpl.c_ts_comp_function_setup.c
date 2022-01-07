
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int tsOrder; } ;
struct TYPE_11__ {int order; } ;
struct TYPE_10__ {TYPE_1__* interResultBuf; } ;
struct TYPE_9__ {TYPE_5__* pTSBuf; } ;
typedef TYPE_1__ STSCompInfo ;
typedef TYPE_2__ SResultInfo ;
typedef TYPE_3__ SQLFunctionCtx ;


 TYPE_2__* GET_RES_INFO (TYPE_3__*) ;
 int function_setup (TYPE_3__*) ;
 TYPE_5__* tsBufCreate (int) ;

__attribute__((used)) static bool ts_comp_function_setup(SQLFunctionCtx *pCtx) {
  if (!function_setup(pCtx)) {
    return 0;
  }

  SResultInfo *pResInfo = GET_RES_INFO(pCtx);
  STSCompInfo *pInfo = pResInfo->interResultBuf;

  pInfo->pTSBuf = tsBufCreate(0);
  pInfo->pTSBuf->tsOrder = pCtx->order;
  return 1;
}
