
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ aOutputBuf; } ;
struct TYPE_9__ {scalar_t__ hasResult; scalar_t__ superTableQ; } ;
struct TYPE_8__ {scalar_t__ hasResult; } ;
typedef TYPE_1__ SSumInfo ;
typedef TYPE_2__ SResultInfo ;
typedef TYPE_3__ SQLFunctionCtx ;


 scalar_t__ DATA_SET_FLAG ;
 TYPE_2__* GET_RES_INFO (TYPE_3__*) ;
 int do_sum (TYPE_3__*) ;

__attribute__((used)) static void sum_function(SQLFunctionCtx *pCtx) {
  do_sum(pCtx);


  SResultInfo *pResInfo = GET_RES_INFO(pCtx);
  if (pResInfo->hasResult == DATA_SET_FLAG && pResInfo->superTableQ) {

    SSumInfo *pSum = (SSumInfo *)pCtx->aOutputBuf;
    pSum->hasResult = DATA_SET_FLAG;
  }
}
