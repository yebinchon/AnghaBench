
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int refcount; } ;
typedef TYPE_1__ AVBufferPool ;


 int atomic_fetch_add_explicit (int *,int,int ) ;
 int buffer_pool_free (TYPE_1__*) ;
 int memory_order_acq_rel ;

void av_buffer_pool_uninit(AVBufferPool **ppool)
{
    AVBufferPool *pool;

    if (!ppool || !*ppool)
        return;
    pool = *ppool;
    *ppool = ((void*)0);

    if (atomic_fetch_add_explicit(&pool->refcount, -1, memory_order_acq_rel) == 1)
        buffer_pool_free(pool);
}
