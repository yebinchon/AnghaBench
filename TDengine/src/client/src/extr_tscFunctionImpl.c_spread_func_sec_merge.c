
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ hasResult; } ;
struct TYPE_10__ {TYPE_1__* param; } ;
struct TYPE_9__ {scalar_t__ hasResult; scalar_t__ min; scalar_t__ max; } ;
struct TYPE_8__ {scalar_t__ dKey; } ;
typedef TYPE_2__ SSpreadInfo ;
typedef TYPE_3__ SQLFunctionCtx ;


 scalar_t__ DATA_SET_FLAG ;
 scalar_t__ GET_INPUT_CHAR (TYPE_3__*) ;
 TYPE_5__* GET_RES_INFO (TYPE_3__*) ;

void spread_func_sec_merge(SQLFunctionCtx *pCtx) {
  SSpreadInfo *pData = (SSpreadInfo *)GET_INPUT_CHAR(pCtx);
  if (pData->hasResult != DATA_SET_FLAG) {
    return;
  }

  if (pCtx->param[0].dKey > pData->min) {
    pCtx->param[0].dKey = pData->min;
  }

  if (pCtx->param[3].dKey < pData->max) {
    pCtx->param[3].dKey = pData->max;
  }


  GET_RES_INFO(pCtx)->hasResult = DATA_SET_FLAG;
}
