
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


 double DBL_MIN ;
 float FLT_MIN ;
 int GET_TRUE_DATA_TYPE () ;
 int INT16_MIN ;
 int INT32_MIN ;
 int INT64_MIN ;
 int INT8_MIN ;






 int function_setup (TYPE_1__*) ;
 int pError (char*,int ) ;
 int type ;

__attribute__((used)) static bool max_func_setup(SQLFunctionCtx *pCtx) {
  if (!function_setup(pCtx)) {
    return 0;
  }

  GET_TRUE_DATA_TYPE();

  switch (type) {
    case 130:
      *((int32_t *)pCtx->aOutputBuf) = INT32_MIN;
      break;
    case 131:
      *((float *)pCtx->aOutputBuf) = -FLT_MIN;
      break;
    case 132:
      *((double *)pCtx->aOutputBuf) = -DBL_MIN;
      break;
    case 133:
      *((int64_t *)pCtx->aOutputBuf) = INT64_MIN;
      break;
    case 129:
      *((int16_t *)pCtx->aOutputBuf) = INT16_MIN;
      break;
    case 128:
      *((int8_t *)pCtx->aOutputBuf) = INT8_MIN;
      break;
    default:
      pError("illegal data type:%d in min/max query", pCtx->inputType);
  }

  return 1;
}
