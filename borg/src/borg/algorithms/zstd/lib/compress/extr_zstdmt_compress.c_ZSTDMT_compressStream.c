
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ZSTD_outBuffer ;
typedef int ZSTD_inBuffer ;
struct TYPE_5__ {size_t filled; } ;
struct TYPE_6__ {size_t targetSectionSize; TYPE_1__ inBuff; } ;
typedef TYPE_2__ ZSTDMT_CCtx ;


 int CHECK_F (int ) ;
 int ZSTDMT_compressStream_generic (TYPE_2__*,int *,int *,int ) ;
 int ZSTD_e_continue ;

size_t ZSTDMT_compressStream(ZSTDMT_CCtx* mtctx, ZSTD_outBuffer* output, ZSTD_inBuffer* input)
{
    CHECK_F( ZSTDMT_compressStream_generic(mtctx, output, input, ZSTD_e_continue) );


    return mtctx->targetSectionSize - mtctx->inBuff.filled;
}
