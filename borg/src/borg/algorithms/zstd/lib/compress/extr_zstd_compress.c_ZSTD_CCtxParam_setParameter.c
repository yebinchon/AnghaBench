
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ZSTD_strategy ;
typedef int ZSTD_format_e ;
typedef int ZSTD_dictAttachPref_e ;
typedef int ZSTD_cParameter ;
struct TYPE_10__ {int enableLdm; int hashLog; int minMatchLength; int bucketSizeLog; int hashRateLog; } ;
struct TYPE_9__ {int contentSizeFlag; int checksumFlag; int noDictIDFlag; } ;
struct TYPE_8__ {int windowLog; int hashLog; int chainLog; int searchLog; int minMatch; int targetLength; int strategy; } ;
struct TYPE_11__ {int compressionLevel; int forceWindow; int attachDictPref; TYPE_3__ ldmParams; TYPE_2__ fParams; TYPE_1__ cParams; int format; } ;
typedef TYPE_4__ ZSTD_CCtx_params ;


 int BOUNDCHECK (int const,int const) ;
 int DEBUGLOG (int,char*,int,...) ;
 size_t ERROR (int ) ;
 size_t ZSTDMT_CCtxParam_setMTCtxParameter (TYPE_4__*,int ,int) ;
 size_t ZSTDMT_CCtxParam_setNbWorkers (TYPE_4__*,int) ;
 int ZSTDMT_p_jobSize ;
 int ZSTDMT_p_overlapLog ;
 int ZSTDMT_p_rsyncable ;
 int ZSTD_HASHLOG_MIN ;
 int ZSTD_WINDOWLOG_MAX ;
 int ZSTD_maxCLevel () ;
 int ZSTD_minCLevel () ;
 int parameter_outOfBound ;
 int parameter_unsupported ;

size_t ZSTD_CCtxParam_setParameter(ZSTD_CCtx_params* CCtxParams,
                                   ZSTD_cParameter param, int value)
{
    DEBUGLOG(4, "ZSTD_CCtxParam_setParameter (%i, %i)", (int)param, value);
    switch(param)
    {
    case 142 :
        BOUNDCHECK(142, value);
        CCtxParams->format = (ZSTD_format_e)value;
        return (size_t)CCtxParams->format;

    case 148 : {
        int cLevel = value;
        if (cLevel > ZSTD_maxCLevel()) cLevel = ZSTD_maxCLevel();
        if (cLevel < ZSTD_minCLevel()) cLevel = ZSTD_minCLevel();
        if (cLevel) {
            CCtxParams->compressionLevel = cLevel;
        }
        if (CCtxParams->compressionLevel >= 0) return CCtxParams->compressionLevel;
        return 0;
    }

    case 128 :
        if (value!=0)
            BOUNDCHECK(128, value);
        CCtxParams->cParams.windowLog = value;
        return CCtxParams->cParams.windowLog;

    case 141 :
        if (value!=0)
            BOUNDCHECK(141, value);
        CCtxParams->cParams.hashLog = value;
        return CCtxParams->cParams.hashLog;

    case 150 :
        if (value!=0)
            BOUNDCHECK(150, value);
        CCtxParams->cParams.chainLog = value;
        return CCtxParams->cParams.chainLog;

    case 131 :
        if (value!=0)
            BOUNDCHECK(131, value);
        CCtxParams->cParams.searchLog = value;
        return value;

    case 135 :
        if (value!=0)
            BOUNDCHECK(135, value);
        CCtxParams->cParams.minMatch = value;
        return CCtxParams->cParams.minMatch;

    case 129 :
        BOUNDCHECK(129, value);
        CCtxParams->cParams.targetLength = value;
        return CCtxParams->cParams.targetLength;

    case 130 :
        if (value!=0)
            BOUNDCHECK(130, value);
        CCtxParams->cParams.strategy = (ZSTD_strategy)value;
        return (size_t)CCtxParams->cParams.strategy;

    case 147 :

        DEBUGLOG(4, "set content size flag = %u", (value!=0));
        CCtxParams->fParams.contentSizeFlag = value != 0;
        return CCtxParams->fParams.contentSizeFlag;

    case 149 :

        CCtxParams->fParams.checksumFlag = value != 0;
        return CCtxParams->fParams.checksumFlag;

    case 146 :
        DEBUGLOG(4, "set dictIDFlag = %u", (value!=0));
        CCtxParams->fParams.noDictIDFlag = !value;
        return !CCtxParams->fParams.noDictIDFlag;

    case 143 :
        CCtxParams->forceWindow = (value != 0);
        return CCtxParams->forceWindow;

    case 144 : {
        const ZSTD_dictAttachPref_e pref = (ZSTD_dictAttachPref_e)value;
        BOUNDCHECK(144, pref);
        CCtxParams->attachDictPref = pref;
        return CCtxParams->attachDictPref;
    }

    case 134 :

        if (value!=0) return ERROR(parameter_unsupported);
        return 0;




    case 140 :

        return ERROR(parameter_unsupported);




    case 133 :

        return ERROR(parameter_unsupported);




    case 132 :

        return ERROR(parameter_unsupported);




    case 145 :
        CCtxParams->ldmParams.enableLdm = (value!=0);
        return CCtxParams->ldmParams.enableLdm;

    case 138 :
        if (value!=0)
            BOUNDCHECK(138, value);
        CCtxParams->ldmParams.hashLog = value;
        return CCtxParams->ldmParams.hashLog;

    case 136 :
        if (value!=0)
            BOUNDCHECK(136, value);
        CCtxParams->ldmParams.minMatchLength = value;
        return CCtxParams->ldmParams.minMatchLength;

    case 139 :
        if (value!=0)
            BOUNDCHECK(139, value);
        CCtxParams->ldmParams.bucketSizeLog = value;
        return CCtxParams->ldmParams.bucketSizeLog;

    case 137 :
        if (value > ZSTD_WINDOWLOG_MAX - ZSTD_HASHLOG_MIN)
            return ERROR(parameter_outOfBound);
        CCtxParams->ldmParams.hashRateLog = value;
        return CCtxParams->ldmParams.hashRateLog;

    default: return ERROR(parameter_unsupported);
    }
}
