
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ZSTD_CCtx ;
struct TYPE_3__ {scalar_t__ availCCtx; scalar_t__ totalCCtx; int poolMutex; int ** cctx; } ;
typedef TYPE_1__ ZSTDMT_CCtxPool ;


 int DEBUGLOG (int,char*) ;
 int ZSTD_freeCCtx (int *) ;
 int ZSTD_pthread_mutex_lock (int *) ;
 int ZSTD_pthread_mutex_unlock (int *) ;

__attribute__((used)) static void ZSTDMT_releaseCCtx(ZSTDMT_CCtxPool* pool, ZSTD_CCtx* cctx)
{
    if (cctx==((void*)0)) return;
    ZSTD_pthread_mutex_lock(&pool->poolMutex);
    if (pool->availCCtx < pool->totalCCtx)
        pool->cctx[pool->availCCtx++] = cctx;
    else {

        DEBUGLOG(4, "CCtx pool overflow : free cctx");
        ZSTD_freeCCtx(cctx);
    }
    ZSTD_pthread_mutex_unlock(&pool->poolMutex);
}
