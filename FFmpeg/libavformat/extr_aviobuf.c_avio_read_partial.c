
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pos; int buf_end; int buf_ptr; int buffer; int error; scalar_t__ write_flag; scalar_t__ read_packet; } ;
typedef TYPE_1__ AVIOContext ;


 int AVERROR_EOF ;
 scalar_t__ avio_feof (TYPE_1__*) ;
 int fill_buffer (TYPE_1__*) ;
 int memcpy (unsigned char*,int,int) ;
 int read_packet_wrapper (TYPE_1__*,unsigned char*,int) ;

int avio_read_partial(AVIOContext *s, unsigned char *buf, int size)
{
    int len;

    if (size < 0)
        return -1;

    if (s->read_packet && s->write_flag) {
        len = read_packet_wrapper(s, buf, size);
        if (len > 0)
            s->pos += len;
        return len;
    }

    len = s->buf_end - s->buf_ptr;
    if (len == 0) {






        s->buf_end = s->buf_ptr = s->buffer;
        fill_buffer(s);
        len = s->buf_end - s->buf_ptr;
    }
    if (len > size)
        len = size;
    memcpy(buf, s->buf_ptr, len);
    s->buf_ptr += len;
    if (!len) {
        if (s->error) return s->error;
        if (avio_feof(s)) return AVERROR_EOF;
    }
    return len;
}
