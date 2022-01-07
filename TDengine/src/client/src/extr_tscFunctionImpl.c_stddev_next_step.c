
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int aOutputBuf; } ;
struct TYPE_10__ {int complete; TYPE_1__* interResultBuf; } ;
struct TYPE_9__ {scalar_t__ stage; scalar_t__ avg; scalar_t__ sum; scalar_t__ num; } ;
typedef TYPE_1__ SStddevInfo ;
typedef TYPE_2__ SResultInfo ;
typedef TYPE_3__ SQLFunctionCtx ;
typedef TYPE_1__ SAvgInfo ;


 scalar_t__ GET_DOUBLE_VAL (int ) ;
 TYPE_2__* GET_RES_INFO (TYPE_3__*) ;
 int assert (int) ;
 int avg_finalizer (TYPE_3__*) ;
 scalar_t__ isnan (scalar_t__) ;

__attribute__((used)) static void stddev_next_step(SQLFunctionCtx *pCtx) {




  SResultInfo *pResInfo = GET_RES_INFO(pCtx);
  SStddevInfo *pStd = pResInfo->interResultBuf;

  if (pStd->stage == 0) {






    pStd->stage++;
    avg_finalizer(pCtx);


    SAvgInfo *pAvg = pResInfo->interResultBuf;

    pStd->avg = GET_DOUBLE_VAL(pCtx->aOutputBuf);
    assert((isnan(pAvg->sum) && pAvg->num == 0) || (pStd->num == pAvg->num && pStd->avg == pAvg->sum));
  } else {
    pResInfo->complete = 1;
  }
}
