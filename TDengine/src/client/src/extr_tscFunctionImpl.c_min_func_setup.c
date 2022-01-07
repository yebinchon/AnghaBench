
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int8_t ;
typedef int int64_t ;
typedef int int32_t ;
typedef int int16_t ;
struct TYPE_4__ {int inputType; scalar_t__ aOutputBuf; } ;
typedef TYPE_1__ SQLFunctionCtx ;


 double DBL_MAX ;
 float FLT_MAX ;
 int GET_TRUE_DATA_TYPE () ;
 int INT16_MAX ;
 int INT32_MAX ;
 int INT64_MAX ;
 int INT8_MAX ;






 int function_setup (TYPE_1__*) ;
 int pError (char*,int ) ;
 int type ;

__attribute__((used)) static bool min_func_setup(SQLFunctionCtx *pCtx) {
  if (!function_setup(pCtx)) {
    return 0;
  }

  GET_TRUE_DATA_TYPE();

  switch (type) {
    case 130:
      *((int32_t *)pCtx->aOutputBuf) = INT32_MAX;
      break;
    case 131:
      *((float *)pCtx->aOutputBuf) = FLT_MAX;
      break;
    case 132:
      *((double *)pCtx->aOutputBuf) = DBL_MAX;
      break;
    case 133:
      *((int64_t *)pCtx->aOutputBuf) = INT64_MAX;
      break;
    case 129:
      *((int16_t *)pCtx->aOutputBuf) = INT16_MAX;
      break;
    case 128:
      *((int8_t *)pCtx->aOutputBuf) = INT8_MAX;
      break;
    default:
      pError("illegal data type:%d in min/max query", pCtx->inputType);
  }

  return 1;
}
