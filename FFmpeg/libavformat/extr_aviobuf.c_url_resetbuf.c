
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int write_flag; scalar_t__ buffer; scalar_t__ buf_end; scalar_t__ buffer_size; } ;
typedef TYPE_1__ AVIOContext ;


 int AVIO_FLAG_READ ;
 int AVIO_FLAG_WRITE ;
 int av_assert1 (int) ;

__attribute__((used)) static int url_resetbuf(AVIOContext *s, int flags)
{
    av_assert1(flags == AVIO_FLAG_WRITE || flags == AVIO_FLAG_READ);

    if (flags & AVIO_FLAG_WRITE) {
        s->buf_end = s->buffer + s->buffer_size;
        s->write_flag = 1;
    } else {
        s->buf_end = s->buffer;
        s->write_flag = 0;
    }
    return 0;
}
