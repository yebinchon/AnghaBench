
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int opaque; int (* pool_free ) (int ) ;int mutex; int data; int (* free ) (int ,int ) ;struct TYPE_5__* next; struct TYPE_5__* pool; } ;
typedef TYPE_1__ BufferPoolEntry ;
typedef TYPE_1__ AVBufferPool ;


 int av_freep (TYPE_1__**) ;
 int ff_mutex_destroy (int *) ;
 int stub1 (int ,int ) ;
 int stub2 (int ) ;

__attribute__((used)) static void buffer_pool_free(AVBufferPool *pool)
{
    while (pool->pool) {
        BufferPoolEntry *buf = pool->pool;
        pool->pool = buf->next;

        buf->free(buf->opaque, buf->data);
        av_freep(&buf);
    }
    ff_mutex_destroy(&pool->mutex);

    if (pool->pool_free)
        pool->pool_free(pool->opaque);

    av_freep(&pool);
}
