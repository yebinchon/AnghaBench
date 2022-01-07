
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ZSTD_format_e ;
typedef int ZSTD_dParameter ;
struct TYPE_3__ {scalar_t__ streamStage; size_t maxWindowSize; int format; } ;
typedef TYPE_1__ ZSTD_DCtx ;


 int CHECK_DBOUNDS (int const,int) ;
 size_t ERROR (int ) ;


 int parameter_unsupported ;
 int stage_wrong ;
 scalar_t__ zdss_init ;

size_t ZSTD_DCtx_setParameter(ZSTD_DCtx* dctx, ZSTD_dParameter dParam, int value)
{
    if (dctx->streamStage != zdss_init) return ERROR(stage_wrong);
    switch(dParam) {
        case 128:
            CHECK_DBOUNDS(128, value);
            dctx->maxWindowSize = ((size_t)1) << value;
            return 0;
        case 129:
            CHECK_DBOUNDS(129, value);
            dctx->format = (ZSTD_format_e)value;
            return 0;
        default:;
    }
    return ERROR(parameter_unsupported);
}
