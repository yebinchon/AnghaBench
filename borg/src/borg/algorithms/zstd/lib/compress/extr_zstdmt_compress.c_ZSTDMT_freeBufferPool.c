
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int totalBuffers; int cMem; int poolMutex; TYPE_1__* bTable; } ;
typedef TYPE_2__ ZSTDMT_bufferPool ;
typedef int U32 ;
struct TYPE_5__ {TYPE_2__* start; } ;


 int DEBUGLOG (int,char*,unsigned int,...) ;
 int ZSTD_free (TYPE_2__*,int ) ;
 int ZSTD_pthread_mutex_destroy (int *) ;

__attribute__((used)) static void ZSTDMT_freeBufferPool(ZSTDMT_bufferPool* bufPool)
{
    unsigned u;
    DEBUGLOG(3, "ZSTDMT_freeBufferPool (address:%08X)", (U32)(size_t)bufPool);
    if (!bufPool) return;
    for (u=0; u<bufPool->totalBuffers; u++) {
        DEBUGLOG(4, "free buffer %2u (address:%08X)", u, (U32)(size_t)bufPool->bTable[u].start);
        ZSTD_free(bufPool->bTable[u].start, bufPool->cMem);
    }
    ZSTD_pthread_mutex_destroy(&bufPool->poolMutex);
    ZSTD_free(bufPool, bufPool->cMem);
}
