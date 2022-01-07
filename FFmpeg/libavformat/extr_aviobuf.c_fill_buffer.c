
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int max_packet_size; int buffer_size; int eof_reached; int orig_buffer_size; int error; int pos; int bytes_read; int * buf_end; int * buf_ptr; int * buffer; int * checksum_ptr; scalar_t__ read_packet; int checksum; int (* update_checksum ) (int ,int *,int) ;} ;
typedef TYPE_1__ AVIOContext ;


 int AVERROR_EOF ;
 int AV_LOG_WARNING ;
 int IO_BUFFER_SIZE ;
 int av_log (TYPE_1__*,int ,char*) ;
 int ffio_set_buf_size (TYPE_1__*,int) ;
 int read_packet_wrapper (TYPE_1__*,int *,int) ;
 int stub1 (int ,int *,int) ;

__attribute__((used)) static void fill_buffer(AVIOContext *s)
{
    int max_buffer_size = s->max_packet_size ?
                          s->max_packet_size : IO_BUFFER_SIZE;
    uint8_t *dst = s->buf_end - s->buffer + max_buffer_size < s->buffer_size ?
                          s->buf_end : s->buffer;
    int len = s->buffer_size - (dst - s->buffer);


    if (!s->read_packet && s->buf_ptr >= s->buf_end)
        s->eof_reached = 1;


    if (s->eof_reached)
        return;

    if (s->update_checksum && dst == s->buffer) {
        if (s->buf_end > s->checksum_ptr)
            s->checksum = s->update_checksum(s->checksum, s->checksum_ptr,
                                             s->buf_end - s->checksum_ptr);
        s->checksum_ptr = s->buffer;
    }


    if (s->read_packet && s->orig_buffer_size && s->buffer_size > s->orig_buffer_size && len >= s->orig_buffer_size) {
        if (dst == s->buffer && s->buf_ptr != dst) {
            int ret = ffio_set_buf_size(s, s->orig_buffer_size);
            if (ret < 0)
                av_log(s, AV_LOG_WARNING, "Failed to decrease buffer size\n");

            s->checksum_ptr = dst = s->buffer;
        }
        len = s->orig_buffer_size;
    }

    len = read_packet_wrapper(s, dst, len);
    if (len == AVERROR_EOF) {


        s->eof_reached = 1;
    } else if (len < 0) {
        s->eof_reached = 1;
        s->error= len;
    } else {
        s->pos += len;
        s->buf_ptr = dst;
        s->buf_end = dst + len;
        s->bytes_read += len;
    }
}
