
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ZSTD_cParameter ;
struct TYPE_3__ {int requestedParams; } ;
typedef TYPE_1__ ZSTD_CCtx ;


 size_t ZSTD_CCtxParam_getParameter (int *,int ,int*) ;

size_t ZSTD_CCtx_getParameter(ZSTD_CCtx* cctx, ZSTD_cParameter param, int* value)
{
    return ZSTD_CCtxParam_getParameter(&cctx->requestedParams, param, value);
}
