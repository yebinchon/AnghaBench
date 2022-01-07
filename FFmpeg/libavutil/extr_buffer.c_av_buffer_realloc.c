
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int size; TYPE_1__* buffer; int * data; } ;
struct TYPE_8__ {int flags; int size; int * data; } ;
typedef TYPE_2__ AVBufferRef ;


 int AVERROR (int ) ;
 int BUFFER_FLAG_REALLOCATABLE ;
 int ENOMEM ;
 int FFMIN (int,int) ;
 TYPE_2__* av_buffer_create (int *,int,int ,int *,int ) ;
 int av_buffer_default_free ;
 int av_buffer_is_writable (TYPE_2__*) ;
 int av_freep (int **) ;
 int * av_realloc (int *,int) ;
 int buffer_replace (TYPE_2__**,TYPE_2__**) ;
 int memcpy (int *,int *,int ) ;

int av_buffer_realloc(AVBufferRef **pbuf, int size)
{
    AVBufferRef *buf = *pbuf;
    uint8_t *tmp;

    if (!buf) {


        uint8_t *data = av_realloc(((void*)0), size);
        if (!data)
            return AVERROR(ENOMEM);

        buf = av_buffer_create(data, size, av_buffer_default_free, ((void*)0), 0);
        if (!buf) {
            av_freep(&data);
            return AVERROR(ENOMEM);
        }

        buf->buffer->flags |= BUFFER_FLAG_REALLOCATABLE;
        *pbuf = buf;

        return 0;
    } else if (buf->size == size)
        return 0;

    if (!(buf->buffer->flags & BUFFER_FLAG_REALLOCATABLE) ||
        !av_buffer_is_writable(buf) || buf->data != buf->buffer->data) {

        AVBufferRef *new = ((void*)0);

        av_buffer_realloc(&new, size);
        if (!new)
            return AVERROR(ENOMEM);

        memcpy(new->data, buf->data, FFMIN(size, buf->size));

        buffer_replace(pbuf, &new);
        return 0;
    }

    tmp = av_realloc(buf->buffer->data, size);
    if (!tmp)
        return AVERROR(ENOMEM);

    buf->buffer->data = buf->data = tmp;
    buf->buffer->size = buf->size = size;
    return 0;
}
