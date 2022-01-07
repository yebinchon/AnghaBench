
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_5__ {int inputBytes; char* aOutputBuf; } ;
typedef TYPE_1__ SQLFunctionCtx ;


 char DATA_SET_FLAG ;
 int SET_VAL (TYPE_1__*,scalar_t__,int) ;
 scalar_t__ minmax_merge_impl (TYPE_1__*,int,char*,int ) ;

__attribute__((used)) static void max_func_merge(SQLFunctionCtx *pCtx) {
  int32_t numOfElems = minmax_merge_impl(pCtx, pCtx->inputBytes, pCtx->aOutputBuf, 0);

  SET_VAL(pCtx, numOfElems, 1);
  if (numOfElems > 0) {
    char *flag = pCtx->aOutputBuf + pCtx->inputBytes;
    *flag = DATA_SET_FLAG;
  }
}
