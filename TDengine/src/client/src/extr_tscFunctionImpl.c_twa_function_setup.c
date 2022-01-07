
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int inputType; } ;
struct TYPE_9__ {TYPE_1__* interResultBuf; } ;
struct TYPE_8__ {int type; int lastKey; } ;
typedef TYPE_1__ STwaInfo ;
typedef TYPE_2__ SResultInfo ;
typedef TYPE_3__ SQLFunctionCtx ;


 TYPE_2__* GET_RES_INFO (TYPE_3__*) ;
 int INT64_MIN ;
 int function_setup (TYPE_3__*) ;

__attribute__((used)) static bool twa_function_setup(SQLFunctionCtx *pCtx) {
  if (!function_setup(pCtx)) {
    return 0;
  }

  SResultInfo *pResInfo = GET_RES_INFO(pCtx);
  STwaInfo * pInfo = pResInfo->interResultBuf;

  pInfo->lastKey = INT64_MIN;
  pInfo->type = pCtx->inputType;

  return 1;
}
