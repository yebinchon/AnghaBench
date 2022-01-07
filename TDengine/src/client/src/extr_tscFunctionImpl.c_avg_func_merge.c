
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_10__ {scalar_t__ num; scalar_t__ sum; } ;
struct TYPE_9__ {scalar_t__ size; int aOutputBuf; int inputBytes; } ;
struct TYPE_8__ {scalar_t__ interResultBuf; int hasResult; int superTableQ; } ;
typedef TYPE_1__ SResultInfo ;
typedef TYPE_2__ SQLFunctionCtx ;
typedef TYPE_3__ SAvgInfo ;


 int DATA_SET_FLAG ;
 char* GET_INPUT_CHAR (TYPE_2__*) ;
 TYPE_1__* GET_RES_INFO (TYPE_2__*) ;
 int assert (int ) ;
 int memcpy (int ,scalar_t__,int) ;

__attribute__((used)) static void avg_func_merge(SQLFunctionCtx *pCtx) {
  SResultInfo *pResInfo = GET_RES_INFO(pCtx);
  assert(pResInfo->superTableQ);

  SAvgInfo *pAvgInfo = (SAvgInfo *)pResInfo->interResultBuf;
  char * input = GET_INPUT_CHAR(pCtx);

  for (int32_t i = 0; i < pCtx->size; ++i, input += pCtx->inputBytes) {
    SAvgInfo *pInput = (SAvgInfo *)input;
    if (pInput->num == 0) {
      continue;
    }

    pAvgInfo->sum += pInput->sum;
    pAvgInfo->num += pInput->num;
  }


  if (pAvgInfo->num > 0) {
    pResInfo->hasResult = DATA_SET_FLAG;
    memcpy(pCtx->aOutputBuf, pResInfo->interResultBuf, sizeof(SAvgInfo));
  }
}
