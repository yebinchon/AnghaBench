
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ZSTD_longOffset_e ;
struct TYPE_5__ {scalar_t__ bmi2; } ;
typedef TYPE_1__ ZSTD_DCtx ;


 int DEBUGLOG (int,char*) ;
 size_t ZSTD_decompressSequences_bmi2 (TYPE_1__*,void*,size_t,void const*,size_t,int,int const) ;
 size_t ZSTD_decompressSequences_default (TYPE_1__*,void*,size_t,void const*,size_t,int,int const) ;

__attribute__((used)) static size_t
ZSTD_decompressSequences(ZSTD_DCtx* dctx, void* dst, size_t maxDstSize,
                   const void* seqStart, size_t seqSize, int nbSeq,
                   const ZSTD_longOffset_e isLongOffset)
{
    DEBUGLOG(5, "ZSTD_decompressSequences");





  return ZSTD_decompressSequences_default(dctx, dst, maxDstSize, seqStart, seqSize, nbSeq, isLongOffset);
}
