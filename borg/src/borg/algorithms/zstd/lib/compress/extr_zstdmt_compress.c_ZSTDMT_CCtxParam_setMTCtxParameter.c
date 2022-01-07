
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int jobSize; int overlapLog; int rsyncable; } ;
typedef TYPE_1__ ZSTD_CCtx_params ;
typedef int ZSTDMT_parameter ;


 int DEBUGLOG (int,char*,...) ;
 size_t ERROR (int ) ;
 int ZSTDMT_JOBSIZE_MAX ;
 int ZSTDMT_JOBSIZE_MIN ;



 int ZSTD_OVERLAPLOG_MAX ;
 int ZSTD_OVERLAPLOG_MIN ;
 int assert (int) ;
 int parameter_unsupported ;

size_t
ZSTDMT_CCtxParam_setMTCtxParameter(ZSTD_CCtx_params* params,
                                   ZSTDMT_parameter parameter,
                                   int value)
{
    DEBUGLOG(4, "ZSTDMT_CCtxParam_setMTCtxParameter");
    switch(parameter)
    {
    case 130 :
        DEBUGLOG(4, "ZSTDMT_CCtxParam_setMTCtxParameter : set jobSize to %i", value);
        if ( value != 0
          && value < ZSTDMT_JOBSIZE_MIN)
            value = ZSTDMT_JOBSIZE_MIN;
        assert(value >= 0);
        if (value > ZSTDMT_JOBSIZE_MAX) value = ZSTDMT_JOBSIZE_MAX;
        params->jobSize = value;
        return value;

    case 129 :
        DEBUGLOG(4, "ZSTDMT_p_overlapLog : %i", value);
        if (value < ZSTD_OVERLAPLOG_MIN) value = ZSTD_OVERLAPLOG_MIN;
        if (value > ZSTD_OVERLAPLOG_MAX) value = ZSTD_OVERLAPLOG_MAX;
        params->overlapLog = value;
        return value;

    case 128 :
        value = (value != 0);
        params->rsyncable = value;
        return value;

    default :
        return ERROR(parameter_unsupported);
    }
}
