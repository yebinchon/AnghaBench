
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ZSTD_outBuffer ;
struct TYPE_6__ {TYPE_1__* cctxPool; scalar_t__ singleBlockingThread; } ;
typedef TYPE_2__ ZSTDMT_CCtx ;
struct TYPE_5__ {int * cctx; } ;


 int DEBUGLOG (int,char*) ;
 size_t ZSTDMT_flushStream_internal (TYPE_2__*,int *,int ) ;
 int ZSTD_e_end ;
 size_t ZSTD_endStream (int ,int *) ;

size_t ZSTDMT_endStream(ZSTDMT_CCtx* mtctx, ZSTD_outBuffer* output)
{
    DEBUGLOG(4, "ZSTDMT_endStream");
    if (mtctx->singleBlockingThread)
        return ZSTD_endStream(mtctx->cctxPool->cctx[0], output);
    return ZSTDMT_flushStream_internal(mtctx, output, ZSTD_e_end);
}
