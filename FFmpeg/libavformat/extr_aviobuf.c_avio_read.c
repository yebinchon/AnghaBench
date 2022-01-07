
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int buf_end; int buf_ptr; int buffer_size; int eof_reached; int error; int pos; int bytes_read; int buffer; int update_checksum; scalar_t__ direct; scalar_t__ write_flag; } ;
typedef TYPE_1__ AVIOContext ;


 int AVERROR_EOF ;
 int FFMIN (int,int) ;
 scalar_t__ avio_feof (TYPE_1__*) ;
 int fill_buffer (TYPE_1__*) ;
 int memcpy (unsigned char*,int,int) ;
 int read_packet_wrapper (TYPE_1__*,unsigned char*,int) ;

int avio_read(AVIOContext *s, unsigned char *buf, int size)
{
    int len, size1;

    size1 = size;
    while (size > 0) {
        len = FFMIN(s->buf_end - s->buf_ptr, size);
        if (len == 0 || s->write_flag) {
            if((s->direct || size > s->buffer_size) && !s->update_checksum) {

                len = read_packet_wrapper(s, buf, size);
                if (len == AVERROR_EOF) {


                    s->eof_reached = 1;
                    break;
                } else if (len < 0) {
                    s->eof_reached = 1;
                    s->error= len;
                    break;
                } else {
                    s->pos += len;
                    s->bytes_read += len;
                    size -= len;
                    buf += len;

                    s->buf_ptr = s->buffer;
                    s->buf_end = s->buffer ;
                }
            } else {
                fill_buffer(s);
                len = s->buf_end - s->buf_ptr;
                if (len == 0)
                    break;
            }
        } else {
            memcpy(buf, s->buf_ptr, len);
            buf += len;
            s->buf_ptr += len;
            size -= len;
        }
    }
    if (size1 == size) {
        if (s->error) return s->error;
        if (avio_feof(s)) return AVERROR_EOF;
    }
    return size1 - size;
}
