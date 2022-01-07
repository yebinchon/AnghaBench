
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int buffer_size; int orig_buffer_size; int * buf_ptr; int * buffer; scalar_t__ write_flag; int * buf_end; int * buf_ptr_max; } ;
typedef TYPE_1__ AVIOContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_free (int *) ;
 int * av_malloc (int) ;
 int ffio_set_buf_size (TYPE_1__*,int) ;
 int memcpy (int *,int *,int) ;

int ffio_realloc_buf(AVIOContext *s, int buf_size)
{
    uint8_t *buffer;
    int data_size;

    if (!s->buffer_size)
        return ffio_set_buf_size(s, buf_size);

    if (buf_size <= s->buffer_size)
        return 0;

    buffer = av_malloc(buf_size);
    if (!buffer)
        return AVERROR(ENOMEM);

    data_size = s->write_flag ? (s->buf_ptr - s->buffer) : (s->buf_end - s->buf_ptr);
    if (data_size > 0)
        memcpy(buffer, s->write_flag ? s->buffer : s->buf_ptr, data_size);
    av_free(s->buffer);
    s->buffer = buffer;
    s->orig_buffer_size = buf_size;
    s->buffer_size = buf_size;
    s->buf_ptr = s->write_flag ? (s->buffer + data_size) : s->buffer;
    if (s->write_flag)
        s->buf_ptr_max = s->buffer + data_size;

    s->buf_end = s->write_flag ? (s->buffer + s->buffer_size) : (s->buf_ptr + data_size);

    return 0;
}
