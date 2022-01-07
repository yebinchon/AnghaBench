
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ZSTD_cParameter ;
struct TYPE_8__ {int enableLdm; int hashLog; int minMatchLength; int bucketSizeLog; int hashRateLog; } ;
struct TYPE_7__ {int contentSizeFlag; int checksumFlag; int noDictIDFlag; } ;
struct TYPE_6__ {int windowLog; int hashLog; int chainLog; int searchLog; int minMatch; int targetLength; int strategy; } ;
struct TYPE_9__ {int format; int compressionLevel; int forceWindow; int attachDictPref; int nbWorkers; int overlapLog; int rsyncable; TYPE_3__ ldmParams; scalar_t__ jobSize; TYPE_2__ fParams; TYPE_1__ cParams; } ;
typedef TYPE_4__ ZSTD_CCtx_params ;


 size_t ERROR (int ) ;
 scalar_t__ INT_MAX ;
 int assert (int) ;
 int parameter_unsupported ;

size_t ZSTD_CCtxParam_getParameter(
        ZSTD_CCtx_params* CCtxParams, ZSTD_cParameter param, int* value)
{
    switch(param)
    {
    case 142 :
        *value = CCtxParams->format;
        break;
    case 148 :
        *value = CCtxParams->compressionLevel;
        break;
    case 128 :
        *value = CCtxParams->cParams.windowLog;
        break;
    case 141 :
        *value = CCtxParams->cParams.hashLog;
        break;
    case 150 :
        *value = CCtxParams->cParams.chainLog;
        break;
    case 131 :
        *value = CCtxParams->cParams.searchLog;
        break;
    case 135 :
        *value = CCtxParams->cParams.minMatch;
        break;
    case 129 :
        *value = CCtxParams->cParams.targetLength;
        break;
    case 130 :
        *value = (unsigned)CCtxParams->cParams.strategy;
        break;
    case 147 :
        *value = CCtxParams->fParams.contentSizeFlag;
        break;
    case 149 :
        *value = CCtxParams->fParams.checksumFlag;
        break;
    case 146 :
        *value = !CCtxParams->fParams.noDictIDFlag;
        break;
    case 143 :
        *value = CCtxParams->forceWindow;
        break;
    case 144 :
        *value = CCtxParams->attachDictPref;
        break;
    case 134 :

        assert(CCtxParams->nbWorkers == 0);

        *value = CCtxParams->nbWorkers;
        break;
    case 140 :

        return ERROR(parameter_unsupported);





    case 133 :

        return ERROR(parameter_unsupported);




    case 132 :

        return ERROR(parameter_unsupported);




    case 145 :
        *value = CCtxParams->ldmParams.enableLdm;
        break;
    case 138 :
        *value = CCtxParams->ldmParams.hashLog;
        break;
    case 136 :
        *value = CCtxParams->ldmParams.minMatchLength;
        break;
    case 139 :
        *value = CCtxParams->ldmParams.bucketSizeLog;
        break;
    case 137 :
        *value = CCtxParams->ldmParams.hashRateLog;
        break;
    default: return ERROR(parameter_unsupported);
    }
    return 0;
}
