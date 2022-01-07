
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int ZSTD_customMem ;
struct TYPE_7__ {unsigned int const totalBuffers; size_t bufferSize; int cMem; } ;
typedef TYPE_1__ ZSTDMT_bufferPool ;
typedef int U32 ;


 TYPE_1__* ZSTDMT_createBufferPool (int,int const) ;
 int ZSTDMT_freeBufferPool (TYPE_1__*) ;
 int ZSTDMT_setBufferSize (TYPE_1__*,size_t const) ;

__attribute__((used)) static ZSTDMT_bufferPool* ZSTDMT_expandBufferPool(ZSTDMT_bufferPool* srcBufPool, U32 nbWorkers)
{
    unsigned const maxNbBuffers = 2*nbWorkers + 3;
    if (srcBufPool==((void*)0)) return ((void*)0);
    if (srcBufPool->totalBuffers >= maxNbBuffers)
        return srcBufPool;

    { ZSTD_customMem const cMem = srcBufPool->cMem;
        size_t const bSize = srcBufPool->bufferSize;
        ZSTDMT_bufferPool* newBufPool;
        ZSTDMT_freeBufferPool(srcBufPool);
        newBufPool = ZSTDMT_createBufferPool(nbWorkers, cMem);
        if (newBufPool==((void*)0)) return newBufPool;
        ZSTDMT_setBufferSize(newBufPool, bSize);
        return newBufPool;
    }
}
