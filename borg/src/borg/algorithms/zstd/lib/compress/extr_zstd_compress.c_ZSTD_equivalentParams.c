
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ZSTD_buffered_policy_e ;
struct TYPE_4__ {int cParams; int ldmParams; } ;
typedef TYPE_1__ ZSTD_CCtx_params ;
typedef scalar_t__ U64 ;
typedef int U32 ;


 int DEBUGLOG (int,char*,...) ;
 int ZSTD_equivalentCParams (int ,int ) ;
 int ZSTD_equivalentLdmParams (int ,int ) ;
 int ZSTD_sufficientBuff (size_t,size_t,size_t,int ,int ,scalar_t__) ;

__attribute__((used)) static U32 ZSTD_equivalentParams(ZSTD_CCtx_params params1,
                                 ZSTD_CCtx_params params2,
                                 size_t buffSize1,
                                 size_t maxNbSeq1, size_t maxNbLit1,
                                 ZSTD_buffered_policy_e buffPol2,
                                 U64 pledgedSrcSize)
{
    DEBUGLOG(4, "ZSTD_equivalentParams: pledgedSrcSize=%u", (U32)pledgedSrcSize);
    if (!ZSTD_equivalentCParams(params1.cParams, params2.cParams)) {
      DEBUGLOG(4, "ZSTD_equivalentCParams() == 0");
      return 0;
    }
    if (!ZSTD_equivalentLdmParams(params1.ldmParams, params2.ldmParams)) {
      DEBUGLOG(4, "ZSTD_equivalentLdmParams() == 0");
      return 0;
    }
    if (!ZSTD_sufficientBuff(buffSize1, maxNbSeq1, maxNbLit1, buffPol2,
                             params2.cParams, pledgedSrcSize)) {
      DEBUGLOG(4, "ZSTD_sufficientBuff() == 0");
      return 0;
    }
    return 1;
}
