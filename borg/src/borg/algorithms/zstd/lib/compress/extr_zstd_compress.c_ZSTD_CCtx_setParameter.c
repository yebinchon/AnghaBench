
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ZSTD_cParameter ;
struct TYPE_3__ {scalar_t__ streamStage; int cParamsChanged; int requestedParams; int cdict; int staticSize; } ;
typedef TYPE_1__ ZSTD_CCtx ;


 int DEBUGLOG (int,char*,int,int) ;
 size_t ERROR (int ) ;
 size_t ZSTD_CCtxParam_setParameter (int *,int,int) ;
 scalar_t__ ZSTD_isUpdateAuthorized (int) ;
 int parameter_unsupported ;
 int stage_wrong ;
 scalar_t__ zcss_init ;

size_t ZSTD_CCtx_setParameter(ZSTD_CCtx* cctx, ZSTD_cParameter param, int value)
{
    DEBUGLOG(4, "ZSTD_CCtx_setParameter (%i, %i)", (int)param, value);
    if (cctx->streamStage != zcss_init) {
        if (ZSTD_isUpdateAuthorized(param)) {
            cctx->cParamsChanged = 1;
        } else {
            return ERROR(stage_wrong);
    } }

    switch(param)
    {
    case 142 :
        return ZSTD_CCtxParam_setParameter(&cctx->requestedParams, param, value);

    case 148:
        if (cctx->cdict) return ERROR(stage_wrong);
        return ZSTD_CCtxParam_setParameter(&cctx->requestedParams, param, value);

    case 128:
    case 141:
    case 150:
    case 131:
    case 135:
    case 129:
    case 130:
        if (cctx->cdict) return ERROR(stage_wrong);
        return ZSTD_CCtxParam_setParameter(&cctx->requestedParams, param, value);

    case 147:
    case 149:
    case 146:
        return ZSTD_CCtxParam_setParameter(&cctx->requestedParams, param, value);

    case 143 :


        return ZSTD_CCtxParam_setParameter(&cctx->requestedParams, param, value);

    case 144:
        return ZSTD_CCtxParam_setParameter(&cctx->requestedParams, param, value);

    case 134:
        if ((value!=0) && cctx->staticSize) {
            return ERROR(parameter_unsupported);
        }
        return ZSTD_CCtxParam_setParameter(&cctx->requestedParams, param, value);

    case 140:
    case 133:
    case 132:
        return ZSTD_CCtxParam_setParameter(&cctx->requestedParams, param, value);

    case 145:
    case 138:
    case 136:
    case 139:
    case 137:
        if (cctx->cdict) return ERROR(stage_wrong);
        return ZSTD_CCtxParam_setParameter(&cctx->requestedParams, param, value);

    default: return ERROR(parameter_unsupported);
    }
}
