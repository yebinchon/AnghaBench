
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int size; void (* free ) (void*,int *) ;int flags; int refcount; void* opaque; int * data; } ;
struct TYPE_5__ {int size; int * data; TYPE_2__* buffer; } ;
typedef TYPE_1__ AVBufferRef ;
typedef TYPE_2__ AVBuffer ;


 int AV_BUFFER_FLAG_READONLY ;
 int BUFFER_FLAG_READONLY ;
 int atomic_init (int *,int) ;
 void av_buffer_default_free (void*,int *) ;
 int av_freep (TYPE_2__**) ;
 void* av_mallocz (int) ;

AVBufferRef *av_buffer_create(uint8_t *data, int size,
                              void (*free)(void *opaque, uint8_t *data),
                              void *opaque, int flags)
{
    AVBufferRef *ref = ((void*)0);
    AVBuffer *buf = ((void*)0);

    buf = av_mallocz(sizeof(*buf));
    if (!buf)
        return ((void*)0);

    buf->data = data;
    buf->size = size;
    buf->free = free ? free : av_buffer_default_free;
    buf->opaque = opaque;

    atomic_init(&buf->refcount, 1);

    if (flags & AV_BUFFER_FLAG_READONLY)
        buf->flags |= BUFFER_FLAG_READONLY;

    ref = av_mallocz(sizeof(*ref));
    if (!ref) {
        av_freep(&buf);
        return ((void*)0);
    }

    ref->buffer = buf;
    ref->data = data;
    ref->size = size;

    return ref;
}
