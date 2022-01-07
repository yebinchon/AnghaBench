
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int const windowLog; int strategy; } ;
struct TYPE_6__ {scalar_t__ enableLdm; } ;
struct TYPE_8__ {int overlapLog; TYPE_2__ cParams; TYPE_1__ ldmParams; } ;
typedef TYPE_3__ ZSTD_CCtx_params ;


 int DEBUGLOG (int,char*,int) ;
 int const MIN (int const,scalar_t__) ;
 scalar_t__ ZSTDMT_computeTargetJobLog (TYPE_3__ const) ;
 int ZSTDMT_overlapLog (int,int ) ;
 int assert (int) ;

__attribute__((used)) static size_t ZSTDMT_computeOverlapSize(ZSTD_CCtx_params const params)
{
    int const overlapRLog = 9 - ZSTDMT_overlapLog(params.overlapLog, params.cParams.strategy);
    int ovLog = (overlapRLog >= 8) ? 0 : (params.cParams.windowLog - overlapRLog);
    assert(0 <= overlapRLog && overlapRLog <= 8);
    if (params.ldmParams.enableLdm) {




        ovLog = MIN(params.cParams.windowLog, ZSTDMT_computeTargetJobLog(params) - 2)
                - overlapRLog;
    }
    assert(0 <= ovLog && ovLog <= 30);
    DEBUGLOG(4, "overlapLog : %i", params.overlapLog);
    DEBUGLOG(4, "overlap size : %i", 1 << ovLog);
    return (ovLog==0) ? 0 : (size_t)1 << ovLog;
}
