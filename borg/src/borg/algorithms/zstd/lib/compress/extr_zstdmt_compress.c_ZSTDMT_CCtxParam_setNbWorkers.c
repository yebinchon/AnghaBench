
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int nbWorkers; scalar_t__ jobSize; int overlapLog; } ;
typedef TYPE_1__ ZSTD_CCtx_params ;


 unsigned int ZSTDMT_NBWORKERS_MAX ;
 int ZSTDMT_OVERLAPLOG_DEFAULT ;

size_t ZSTDMT_CCtxParam_setNbWorkers(ZSTD_CCtx_params* params, unsigned nbWorkers)
{
    if (nbWorkers > ZSTDMT_NBWORKERS_MAX) nbWorkers = ZSTDMT_NBWORKERS_MAX;
    params->nbWorkers = nbWorkers;
    params->overlapLog = ZSTDMT_OVERLAPLOG_DEFAULT;
    params->jobSize = 0;
    return nbWorkers;
}
