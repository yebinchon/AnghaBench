
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int64_t ;
typedef scalar_t__ int32_t ;
struct TYPE_10__ {scalar_t__ size; scalar_t__ aOutputBuf; } ;
struct TYPE_9__ {int superTableQ; } ;
struct TYPE_8__ {scalar_t__ hasResult; double dsum; int isum; } ;
typedef TYPE_1__ SSumInfo ;
typedef TYPE_2__ SResultInfo ;
typedef TYPE_3__ SQLFunctionCtx ;


 scalar_t__ DATA_SET_FLAG ;
 char* GET_INPUT_CHAR_INDEX (TYPE_3__ const*,scalar_t__) ;
 TYPE_2__* GET_RES_INFO (TYPE_3__ const*) ;
 int GET_TRUE_DATA_TYPE () ;






 int assert (int ) ;
 int type ;

__attribute__((used)) static int32_t sum_merge_impl(const SQLFunctionCtx *pCtx) {
  int32_t notNullElems = 0;

  GET_TRUE_DATA_TYPE();
  SResultInfo *pResInfo = GET_RES_INFO(pCtx);
  assert(pResInfo->superTableQ);

  for (int32_t i = 0; i < pCtx->size; ++i) {
    char * input = GET_INPUT_CHAR_INDEX(pCtx, i);
    SSumInfo *pInput = (SSumInfo *)input;
    if (pInput->hasResult != DATA_SET_FLAG) {
      continue;
    }

    notNullElems++;

    switch (type) {
      case 128:
      case 129:
      case 130:
      case 133: {
        *(int64_t *)pCtx->aOutputBuf += pInput->isum;
        break;
      };
      case 131:
      case 132: {
        *(double *)pCtx->aOutputBuf += pInput->dsum;
      }
    }
  }

  return notNullElems;
}
