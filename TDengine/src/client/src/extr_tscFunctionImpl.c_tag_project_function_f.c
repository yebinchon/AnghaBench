
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_6__ {int nType; } ;
struct TYPE_5__ {int aOutputBuf; int outputBytes; int order; TYPE_3__ tag; } ;
typedef TYPE_1__ SQLFunctionCtx ;


 int GET_FORWARD_DIRECTION_FACTOR (int ) ;
 int INC_INIT_VAL (TYPE_1__*,int) ;
 int tVariantDump (TYPE_3__*,int,int ) ;

__attribute__((used)) static void tag_project_function_f(SQLFunctionCtx *pCtx, int32_t index) {
  INC_INIT_VAL(pCtx, 1);
  tVariantDump(&pCtx->tag, pCtx->aOutputBuf, pCtx->tag.nType);
  pCtx->aOutputBuf += pCtx->outputBytes * GET_FORWARD_DIRECTION_FACTOR(pCtx->order);
}
