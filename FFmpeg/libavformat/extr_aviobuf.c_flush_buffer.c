
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ buf_ptr_max; scalar_t__ buf_ptr; scalar_t__ buffer; scalar_t__ checksum_ptr; scalar_t__ buf_end; scalar_t__ write_flag; int checksum; int (* update_checksum ) (int ,scalar_t__,scalar_t__) ;} ;
typedef TYPE_1__ AVIOContext ;


 scalar_t__ FFMAX (scalar_t__,scalar_t__) ;
 int stub1 (int ,scalar_t__,scalar_t__) ;
 int writeout (TYPE_1__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void flush_buffer(AVIOContext *s)
{
    s->buf_ptr_max = FFMAX(s->buf_ptr, s->buf_ptr_max);
    if (s->write_flag && s->buf_ptr_max > s->buffer) {
        writeout(s, s->buffer, s->buf_ptr_max - s->buffer);
        if (s->update_checksum) {
            s->checksum = s->update_checksum(s->checksum, s->checksum_ptr,
                                                 s->buf_ptr_max - s->checksum_ptr);
            s->checksum_ptr = s->buffer;
        }
    }
    s->buf_ptr = s->buf_ptr_max = s->buffer;
    if (!s->write_flag)
        s->buf_end = s->buffer;
}
