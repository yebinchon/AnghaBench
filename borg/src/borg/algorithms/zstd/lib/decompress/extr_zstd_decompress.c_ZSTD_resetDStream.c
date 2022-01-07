
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hostageByte; scalar_t__ legacyVersion; scalar_t__ outEnd; scalar_t__ outStart; scalar_t__ inPos; scalar_t__ lhSize; int streamStage; } ;
typedef TYPE_1__ ZSTD_DStream ;


 int DEBUGLOG (int,char*) ;
 size_t ZSTD_FRAMEHEADERSIZE_PREFIX ;
 int zdss_loadHeader ;

size_t ZSTD_resetDStream(ZSTD_DStream* dctx)
{
    DEBUGLOG(4, "ZSTD_resetDStream");
    dctx->streamStage = zdss_loadHeader;
    dctx->lhSize = dctx->inPos = dctx->outStart = dctx->outEnd = 0;
    dctx->legacyVersion = 0;
    dctx->hostageByte = 0;
    return ZSTD_FRAMEHEADERSIZE_PREFIX;
}
