
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int outputBytes; int outputType; int aOutputBuf; } ;
struct TYPE_7__ {scalar_t__ hasResult; } ;
typedef TYPE_1__ SResultInfo ;
typedef TYPE_2__ SQLFunctionCtx ;


 scalar_t__ DATA_SET_FLAG ;
 TYPE_1__* GET_RES_INFO (TYPE_2__*) ;
 int pTrace (char*) ;
 int resetResultInfo (TYPE_1__*) ;
 int setNull (int ,int ,int ) ;

__attribute__((used)) static void function_finalizer(SQLFunctionCtx *pCtx) {
  SResultInfo *pResInfo = GET_RES_INFO(pCtx);

  if (pResInfo->hasResult != DATA_SET_FLAG) {
    pTrace("no result generated, result is set to NULL");
    setNull(pCtx->aOutputBuf, pCtx->outputType, pCtx->outputBytes);
  }

  resetResultInfo(GET_RES_INFO(pCtx));
}
