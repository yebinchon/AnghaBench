
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int64_t ;
typedef scalar_t__ int32_t ;
struct TYPE_10__ {scalar_t__ num; scalar_t__ sum; } ;
struct TYPE_9__ {double* aOutputBuf; scalar_t__ size; int inputBytes; } ;
struct TYPE_8__ {scalar_t__ interResultBuf; } ;
typedef TYPE_1__ SResultInfo ;
typedef TYPE_2__ SQLFunctionCtx ;
typedef TYPE_3__ SAvgInfo ;


 char* GET_INPUT_CHAR (TYPE_2__*) ;
 TYPE_1__* GET_RES_INFO (TYPE_2__*) ;

__attribute__((used)) static void avg_func_second_merge(SQLFunctionCtx *pCtx) {
  SResultInfo *pResInfo = GET_RES_INFO(pCtx);

  double *sum = pCtx->aOutputBuf;
  char * input = GET_INPUT_CHAR(pCtx);

  for (int32_t i = 0; i < pCtx->size; ++i, input += pCtx->inputBytes) {
    SAvgInfo *pInput = (SAvgInfo *)input;
    if (pInput->num == 0) {
      continue;
    }

    *sum += pInput->sum;


    *(int64_t *)pResInfo->interResultBuf += pInput->num;
  }
}
