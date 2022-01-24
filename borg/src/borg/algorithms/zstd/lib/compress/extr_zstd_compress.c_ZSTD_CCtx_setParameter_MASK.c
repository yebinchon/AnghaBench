#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ZSTD_cParameter ;
struct TYPE_3__ {scalar_t__ streamStage; int cParamsChanged; int /*<<< orphan*/  requestedParams; int /*<<< orphan*/  cdict; int /*<<< orphan*/  staticSize; } ;
typedef  TYPE_1__ ZSTD_CCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int,int) ; 
#define  ZSTD_c_chainLog 150 
#define  ZSTD_c_checksumFlag 149 
#define  ZSTD_c_compressionLevel 148 
#define  ZSTD_c_contentSizeFlag 147 
#define  ZSTD_c_dictIDFlag 146 
#define  ZSTD_c_enableLongDistanceMatching 145 
#define  ZSTD_c_forceAttachDict 144 
#define  ZSTD_c_forceMaxWindow 143 
#define  ZSTD_c_format 142 
#define  ZSTD_c_hashLog 141 
#define  ZSTD_c_jobSize 140 
#define  ZSTD_c_ldmBucketSizeLog 139 
#define  ZSTD_c_ldmHashLog 138 
#define  ZSTD_c_ldmHashRateLog 137 
#define  ZSTD_c_ldmMinMatch 136 
#define  ZSTD_c_minMatch 135 
#define  ZSTD_c_nbWorkers 134 
#define  ZSTD_c_overlapLog 133 
#define  ZSTD_c_rsyncable 132 
#define  ZSTD_c_searchLog 131 
#define  ZSTD_c_strategy 130 
#define  ZSTD_c_targetLength 129 
#define  ZSTD_c_windowLog 128 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  parameter_unsupported ; 
 int /*<<< orphan*/  stage_wrong ; 
 scalar_t__ zcss_init ; 

size_t FUNC4(ZSTD_CCtx* cctx, ZSTD_cParameter param, int value)
{
    FUNC0(4, "ZSTD_CCtx_setParameter (%i, %i)", (int)param, value);
    if (cctx->streamStage != zcss_init) {
        if (FUNC3(param)) {
            cctx->cParamsChanged = 1;
        } else {
            return FUNC1(stage_wrong);
    }   }

    switch(param)
    {
    case ZSTD_c_format :
        return FUNC2(&cctx->requestedParams, param, value);

    case ZSTD_c_compressionLevel:
        if (cctx->cdict) return FUNC1(stage_wrong);
        return FUNC2(&cctx->requestedParams, param, value);

    case ZSTD_c_windowLog:
    case ZSTD_c_hashLog:
    case ZSTD_c_chainLog:
    case ZSTD_c_searchLog:
    case ZSTD_c_minMatch:
    case ZSTD_c_targetLength:
    case ZSTD_c_strategy:
        if (cctx->cdict) return FUNC1(stage_wrong);
        return FUNC2(&cctx->requestedParams, param, value);

    case ZSTD_c_contentSizeFlag:
    case ZSTD_c_checksumFlag:
    case ZSTD_c_dictIDFlag:
        return FUNC2(&cctx->requestedParams, param, value);

    case ZSTD_c_forceMaxWindow :  /* Force back-references to remain < windowSize,
                                   * even when referencing into Dictionary content.
                                   * default : 0 when using a CDict, 1 when using a Prefix */
        return FUNC2(&cctx->requestedParams, param, value);

    case ZSTD_c_forceAttachDict:
        return FUNC2(&cctx->requestedParams, param, value);

    case ZSTD_c_nbWorkers:
        if ((value!=0) && cctx->staticSize) {
            return FUNC1(parameter_unsupported);  /* MT not compatible with static alloc */
        }
        return FUNC2(&cctx->requestedParams, param, value);

    case ZSTD_c_jobSize:
    case ZSTD_c_overlapLog:
    case ZSTD_c_rsyncable:
        return FUNC2(&cctx->requestedParams, param, value);

    case ZSTD_c_enableLongDistanceMatching:
    case ZSTD_c_ldmHashLog:
    case ZSTD_c_ldmMinMatch:
    case ZSTD_c_ldmBucketSizeLog:
    case ZSTD_c_ldmHashRateLog:
        if (cctx->cdict) return FUNC1(stage_wrong);
        return FUNC2(&cctx->requestedParams, param, value);

    default: return FUNC1(parameter_unsupported);
    }
}