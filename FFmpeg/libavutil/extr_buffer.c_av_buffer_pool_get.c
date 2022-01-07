
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int refcount; int mutex; TYPE_1__* pool; int size; } ;
struct TYPE_6__ {struct TYPE_6__* next; int data; } ;
typedef TYPE_1__ BufferPoolEntry ;
typedef int AVBufferRef ;
typedef TYPE_2__ AVBufferPool ;


 int atomic_fetch_add_explicit (int *,int,int ) ;
 int * av_buffer_create (int ,int ,int ,TYPE_1__*,int ) ;
 int ff_mutex_lock (int *) ;
 int ff_mutex_unlock (int *) ;
 int memory_order_relaxed ;
 int * pool_alloc_buffer (TYPE_2__*) ;
 int pool_release_buffer ;

AVBufferRef *av_buffer_pool_get(AVBufferPool *pool)
{
    AVBufferRef *ret;
    BufferPoolEntry *buf;

    ff_mutex_lock(&pool->mutex);
    buf = pool->pool;
    if (buf) {
        ret = av_buffer_create(buf->data, pool->size, pool_release_buffer,
                               buf, 0);
        if (ret) {
            pool->pool = buf->next;
            buf->next = ((void*)0);
        }
    } else {
        ret = pool_alloc_buffer(pool);
    }
    ff_mutex_unlock(&pool->mutex);

    if (ret)
        atomic_fetch_add_explicit(&pool->refcount, 1, memory_order_relaxed);

    return ret;
}
