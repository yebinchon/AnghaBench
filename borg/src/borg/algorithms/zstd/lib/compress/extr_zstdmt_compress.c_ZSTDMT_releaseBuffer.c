
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * start; scalar_t__ capacity; } ;
typedef TYPE_1__ buffer_t ;
struct TYPE_6__ {int nbBuffers; int totalBuffers; int cMem; int poolMutex; TYPE_1__* bTable; } ;
typedef TYPE_2__ ZSTDMT_bufferPool ;
typedef int U32 ;


 int DEBUGLOG (int,char*,...) ;
 int ZSTD_free (int *,int ) ;
 int ZSTD_pthread_mutex_lock (int *) ;
 int ZSTD_pthread_mutex_unlock (int *) ;

__attribute__((used)) static void ZSTDMT_releaseBuffer(ZSTDMT_bufferPool* bufPool, buffer_t buf)
{
    DEBUGLOG(5, "ZSTDMT_releaseBuffer");
    if (buf.start == ((void*)0)) return;
    ZSTD_pthread_mutex_lock(&bufPool->poolMutex);
    if (bufPool->nbBuffers < bufPool->totalBuffers) {
        bufPool->bTable[bufPool->nbBuffers++] = buf;
        DEBUGLOG(5, "ZSTDMT_releaseBuffer: stored buffer of size %u in slot %u",
                    (U32)buf.capacity, (U32)(bufPool->nbBuffers-1));
        ZSTD_pthread_mutex_unlock(&bufPool->poolMutex);
        return;
    }
    ZSTD_pthread_mutex_unlock(&bufPool->poolMutex);

    DEBUGLOG(5, "ZSTDMT_releaseBuffer: pool capacity reached => freeing ");
    ZSTD_free(buf.start, bufPool->cMem);
}
