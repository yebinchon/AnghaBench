
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ currentStage; int outputBytes; int outputType; int aOutputBuf; } ;
struct TYPE_7__ {scalar_t__ hasResult; int numOfRes; } ;
typedef TYPE_1__ SResultInfo ;
typedef TYPE_2__ SQLFunctionCtx ;


 scalar_t__ DATA_SET_FLAG ;
 TYPE_1__* GET_RES_INFO (TYPE_2__*) ;
 scalar_t__ SECONDARY_STAGE_MERGE ;
 int resetResultInfo (TYPE_1__*) ;
 int setNull (int ,int ,int ) ;

__attribute__((used)) static void last_row_finalizer(SQLFunctionCtx *pCtx) {

  if (pCtx->currentStage == SECONDARY_STAGE_MERGE) {
    SResultInfo *pResInfo = GET_RES_INFO(pCtx);
    if (pResInfo->hasResult != DATA_SET_FLAG) {
      setNull(pCtx->aOutputBuf, pCtx->outputType, pCtx->outputBytes);
      return;
    }
  } else {

  }

  GET_RES_INFO(pCtx)->numOfRes = 1;
  resetResultInfo(GET_RES_INFO(pCtx));
}
