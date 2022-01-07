
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int startVal; } ;
struct TYPE_11__ {TYPE_1__* param; } ;
struct TYPE_10__ {TYPE_4__* interResultBuf; } ;
struct TYPE_9__ {int dKey; } ;
typedef TYPE_2__ SResultInfo ;
typedef TYPE_3__ SQLFunctionCtx ;
typedef TYPE_4__ SLeastsquareInfo ;


 TYPE_2__* GET_RES_INFO (TYPE_3__*) ;
 int function_setup (TYPE_3__*) ;

__attribute__((used)) static bool leastsquares_function_setup(SQLFunctionCtx *pCtx) {
  if (!function_setup(pCtx)) {
    return 0;
  }

  SResultInfo * pResInfo = GET_RES_INFO(pCtx);
  SLeastsquareInfo *pInfo = pResInfo->interResultBuf;


  pInfo->startVal = pCtx->param[0].dKey;
  return 1;
}
