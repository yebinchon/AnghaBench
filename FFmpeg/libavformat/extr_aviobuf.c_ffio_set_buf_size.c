
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int orig_buffer_size; int buffer_size; scalar_t__ write_flag; int * buf_ptr_max; int * buf_ptr; int * buffer; } ;
typedef TYPE_1__ AVIOContext ;


 int AVERROR (int ) ;
 int AVIO_FLAG_READ ;
 int AVIO_FLAG_WRITE ;
 int ENOMEM ;
 int av_free (int *) ;
 int * av_malloc (int) ;
 int url_resetbuf (TYPE_1__*,int ) ;

int ffio_set_buf_size(AVIOContext *s, int buf_size)
{
    uint8_t *buffer;
    buffer = av_malloc(buf_size);
    if (!buffer)
        return AVERROR(ENOMEM);

    av_free(s->buffer);
    s->buffer = buffer;
    s->orig_buffer_size =
    s->buffer_size = buf_size;
    s->buf_ptr = s->buf_ptr_max = buffer;
    url_resetbuf(s, s->write_flag ? AVIO_FLAG_WRITE : AVIO_FLAG_READ);
    return 0;
}
