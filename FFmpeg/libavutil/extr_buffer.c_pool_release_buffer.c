
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int refcount; int mutex; TYPE_1__* pool; int size; } ;
struct TYPE_4__ {struct TYPE_4__* next; int data; TYPE_2__* pool; } ;
typedef TYPE_1__ BufferPoolEntry ;
typedef TYPE_2__ AVBufferPool ;


 scalar_t__ CONFIG_MEMORY_POISONING ;
 int FF_MEMORY_POISON ;
 int atomic_fetch_add_explicit (int *,int,int ) ;
 int buffer_pool_free (TYPE_2__*) ;
 int ff_mutex_lock (int *) ;
 int ff_mutex_unlock (int *) ;
 int memory_order_acq_rel ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static void pool_release_buffer(void *opaque, uint8_t *data)
{
    BufferPoolEntry *buf = opaque;
    AVBufferPool *pool = buf->pool;

    if(CONFIG_MEMORY_POISONING)
        memset(buf->data, FF_MEMORY_POISON, pool->size);

    ff_mutex_lock(&pool->mutex);
    buf->next = pool->pool;
    pool->pool = buf;
    ff_mutex_unlock(&pool->mutex);

    if (atomic_fetch_add_explicit(&pool->refcount, -1, memory_order_acq_rel) == 1)
        buffer_pool_free(pool);
}
