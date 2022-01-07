
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int64_t ;
struct TYPE_3__ {int max_packet_size; int buffer_size; int * buffer; int * checksum_ptr; int * buf_end; int * buf_ptr; int write_flag; int read_packet; scalar_t__ seekable; } ;
typedef TYPE_1__ AVIOContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int IO_BUFFER_SIZE ;
 int av_assert0 (int) ;
 int av_free (int *) ;
 int * av_malloc (int) ;
 int memcpy (int *,int *,int) ;

int ffio_ensure_seekback(AVIOContext *s, int64_t buf_size)
{
    uint8_t *buffer;
    int max_buffer_size = s->max_packet_size ?
                          s->max_packet_size : IO_BUFFER_SIZE;
    int filled = s->buf_end - s->buffer;
    ptrdiff_t checksum_ptr_offset = s->checksum_ptr ? s->checksum_ptr - s->buffer : -1;

    buf_size += s->buf_ptr - s->buffer + max_buffer_size;

    if (buf_size < filled || s->seekable || !s->read_packet)
        return 0;
    av_assert0(!s->write_flag);

    buffer = av_malloc(buf_size);
    if (!buffer)
        return AVERROR(ENOMEM);

    memcpy(buffer, s->buffer, filled);
    av_free(s->buffer);
    s->buf_ptr = buffer + (s->buf_ptr - s->buffer);
    s->buf_end = buffer + (s->buf_end - s->buffer);
    s->buffer = buffer;
    s->buffer_size = buf_size;
    if (checksum_ptr_offset >= 0)
        s->checksum_ptr = s->buffer + checksum_ptr_offset;
    return 0;
}
