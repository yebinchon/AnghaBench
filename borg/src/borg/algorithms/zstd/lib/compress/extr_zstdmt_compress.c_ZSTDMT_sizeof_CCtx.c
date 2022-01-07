
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ZSTDMT_jobDescription ;
struct TYPE_4__ {size_t capacity; } ;
struct TYPE_5__ {int jobIDMask; TYPE_1__ roundBuff; int cdictLocal; int seqPool; int cctxPool; int bufPool; int factory; } ;
typedef TYPE_2__ ZSTDMT_CCtx ;


 size_t POOL_sizeof (int ) ;
 size_t ZSTDMT_sizeof_CCtxPool (int ) ;
 size_t ZSTDMT_sizeof_bufferPool (int ) ;
 size_t ZSTDMT_sizeof_seqPool (int ) ;
 size_t ZSTD_sizeof_CDict (int ) ;

size_t ZSTDMT_sizeof_CCtx(ZSTDMT_CCtx* mtctx)
{
    if (mtctx == ((void*)0)) return 0;
    return sizeof(*mtctx)
            + POOL_sizeof(mtctx->factory)
            + ZSTDMT_sizeof_bufferPool(mtctx->bufPool)
            + (mtctx->jobIDMask+1) * sizeof(ZSTDMT_jobDescription)
            + ZSTDMT_sizeof_CCtxPool(mtctx->cctxPool)
            + ZSTDMT_sizeof_seqPool(mtctx->seqPool)
            + ZSTD_sizeof_CDict(mtctx->cdictLocal)
            + mtctx->roundBuff.capacity;
}
