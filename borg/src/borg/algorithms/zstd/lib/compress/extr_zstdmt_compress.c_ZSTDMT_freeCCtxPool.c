
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int totalCCtx; int cMem; int poolMutex; int * cctx; } ;
typedef TYPE_1__ ZSTDMT_CCtxPool ;


 int ZSTD_free (TYPE_1__*,int ) ;
 int ZSTD_freeCCtx (int ) ;
 int ZSTD_pthread_mutex_destroy (int *) ;

__attribute__((used)) static void ZSTDMT_freeCCtxPool(ZSTDMT_CCtxPool* pool)
{
    int cid;
    for (cid=0; cid<pool->totalCCtx; cid++)
        ZSTD_freeCCtx(pool->cctx[cid]);
    ZSTD_pthread_mutex_destroy(&pool->poolMutex);
    ZSTD_free(pool, pool->cMem);
}
