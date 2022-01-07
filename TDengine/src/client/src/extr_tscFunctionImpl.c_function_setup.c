
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ outputBytes; int aOutputBuf; } ;
struct TYPE_7__ {scalar_t__ initialized; } ;
typedef TYPE_1__ SResultInfo ;
typedef TYPE_2__ SQLFunctionCtx ;


 TYPE_1__* GET_RES_INFO (TYPE_2__*) ;
 int initResultInfo (TYPE_1__*) ;
 int memset (int ,int ,size_t) ;

__attribute__((used)) static bool function_setup(SQLFunctionCtx *pCtx) {
  SResultInfo *pResInfo = GET_RES_INFO(pCtx);
  if (pResInfo->initialized) {
    return 0;
  }

  memset(pCtx->aOutputBuf, 0, (size_t)pCtx->outputBytes);

  initResultInfo(pResInfo);
  return 1;
}
