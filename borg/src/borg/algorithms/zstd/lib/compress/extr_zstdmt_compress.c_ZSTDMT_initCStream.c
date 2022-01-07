
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int fParams; int cParams; } ;
typedef TYPE_1__ ZSTD_parameters ;
struct TYPE_9__ {int fParams; int cParams; } ;
typedef TYPE_2__ ZSTD_CCtx_params ;
struct TYPE_10__ {TYPE_2__ params; } ;
typedef TYPE_3__ ZSTDMT_CCtx ;


 int DEBUGLOG (int,char*,int) ;
 size_t ZSTDMT_initCStream_internal (TYPE_3__*,int *,int ,int ,int *,TYPE_2__,int ) ;
 int ZSTD_CONTENTSIZE_UNKNOWN ;
 int ZSTD_dct_auto ;
 TYPE_1__ ZSTD_getParams (int,int ,int ) ;

size_t ZSTDMT_initCStream(ZSTDMT_CCtx* mtctx, int compressionLevel) {
    ZSTD_parameters const params = ZSTD_getParams(compressionLevel, ZSTD_CONTENTSIZE_UNKNOWN, 0);
    ZSTD_CCtx_params cctxParams = mtctx->params;
    DEBUGLOG(4, "ZSTDMT_initCStream (cLevel=%i)", compressionLevel);
    cctxParams.cParams = params.cParams;
    cctxParams.fParams = params.fParams;
    return ZSTDMT_initCStream_internal(mtctx, ((void*)0), 0, ZSTD_dct_auto, ((void*)0), cctxParams, ZSTD_CONTENTSIZE_UNKNOWN);
}
