
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int size; TYPE_3__* (* alloc ) (int ) ;int opaque; TYPE_3__* (* alloc2 ) (int ,int ) ;} ;
struct TYPE_13__ {TYPE_1__* buffer; } ;
struct TYPE_12__ {TYPE_4__* pool; int free; struct TYPE_12__* opaque; int data; } ;
struct TYPE_11__ {int free; TYPE_2__* opaque; int data; } ;
typedef TYPE_2__ BufferPoolEntry ;
typedef TYPE_3__ AVBufferRef ;
typedef TYPE_4__ AVBufferPool ;


 int av_buffer_unref (TYPE_3__**) ;
 TYPE_2__* av_mallocz (int) ;
 int pool_release_buffer ;
 TYPE_3__* stub1 (int ,int ) ;
 TYPE_3__* stub2 (int ) ;

__attribute__((used)) static AVBufferRef *pool_alloc_buffer(AVBufferPool *pool)
{
    BufferPoolEntry *buf;
    AVBufferRef *ret;

    ret = pool->alloc2 ? pool->alloc2(pool->opaque, pool->size) :
                         pool->alloc(pool->size);
    if (!ret)
        return ((void*)0);

    buf = av_mallocz(sizeof(*buf));
    if (!buf) {
        av_buffer_unref(&ret);
        return ((void*)0);
    }

    buf->data = ret->buffer->data;
    buf->opaque = ret->buffer->opaque;
    buf->free = ret->buffer->free;
    buf->pool = pool;

    ret->buffer->opaque = buf;
    ret->buffer->free = pool_release_buffer;

    return ret;
}
