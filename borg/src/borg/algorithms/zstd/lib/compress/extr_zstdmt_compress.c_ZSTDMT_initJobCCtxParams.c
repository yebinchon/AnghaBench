
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int jobParams ;
struct TYPE_5__ {int compressionLevel; int fParams; int cParams; } ;
typedef TYPE_1__ ZSTD_CCtx_params ;


 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static ZSTD_CCtx_params ZSTDMT_initJobCCtxParams(ZSTD_CCtx_params const params)
{
    ZSTD_CCtx_params jobParams;
    memset(&jobParams, 0, sizeof(jobParams));

    jobParams.cParams = params.cParams;
    jobParams.fParams = params.fParams;
    jobParams.compressionLevel = params.compressionLevel;

    return jobParams;
}
