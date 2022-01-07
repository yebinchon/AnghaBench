
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ interResultBuf; } ;
struct TYPE_9__ {scalar_t__ aOutputBuf; int outputBytes; int outputType; } ;
struct TYPE_8__ {int num; int res; } ;
typedef TYPE_1__ SStddevInfo ;
typedef TYPE_2__ SQLFunctionCtx ;


 TYPE_4__* GET_RES_INFO (TYPE_2__*) ;
 int SET_VAL (TYPE_2__*,int,int) ;
 int resetResultInfo (TYPE_4__*) ;
 int setNull (scalar_t__,int ,int ) ;
 double sqrt (int) ;

__attribute__((used)) static void stddev_finalizer(SQLFunctionCtx *pCtx) {
  SStddevInfo *pStd = (SStddevInfo *)GET_RES_INFO(pCtx)->interResultBuf;

  if (pStd->num <= 0) {
    setNull(pCtx->aOutputBuf, pCtx->outputType, pCtx->outputBytes);
  } else {
    double *retValue = (double *)pCtx->aOutputBuf;
    *retValue = sqrt(pStd->res / pStd->num);
    SET_VAL(pCtx, 1, 1);
  }

  resetResultInfo(GET_RES_INFO(pCtx));
}
