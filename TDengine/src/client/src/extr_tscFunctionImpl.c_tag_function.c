
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nType; } ;
struct TYPE_5__ {TYPE_3__ tag; int aOutputBuf; } ;
typedef TYPE_1__ SQLFunctionCtx ;


 int SET_VAL (TYPE_1__*,int,int) ;
 int tVariantDump (TYPE_3__*,int ,int ) ;

__attribute__((used)) static void tag_function(SQLFunctionCtx *pCtx) {
  SET_VAL(pCtx, 1, 1);
  tVariantDump(&pCtx->tag, pCtx->aOutputBuf, pCtx->tag.nType);
}
