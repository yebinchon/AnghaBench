
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int complete; } ;
typedef TYPE_1__ SResultInfo ;
typedef int SQLFunctionCtx ;


 TYPE_1__* GET_RES_INFO (int *) ;

__attribute__((used)) static void no_next_step(SQLFunctionCtx *pCtx) {
  SResultInfo *pResInfo = GET_RES_INFO(pCtx);
  pResInfo->complete = 1;
}
