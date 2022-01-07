
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ buf_end; scalar_t__ buf_ptr; int update_checksum; scalar_t__ direct; } ;
typedef TYPE_1__ AVIOContext ;


 int FFMIN (scalar_t__,int) ;
 int avio_flush (TYPE_1__*) ;
 int flush_buffer (TYPE_1__*) ;
 int memcpy (scalar_t__,unsigned char const*,int) ;
 int writeout (TYPE_1__*,unsigned char const*,int) ;

void avio_write(AVIOContext *s, const unsigned char *buf, int size)
{
    if (s->direct && !s->update_checksum) {
        avio_flush(s);
        writeout(s, buf, size);
        return;
    }
    while (size > 0) {
        int len = FFMIN(s->buf_end - s->buf_ptr, size);
        memcpy(s->buf_ptr, buf, len);
        s->buf_ptr += len;

        if (s->buf_ptr >= s->buf_end)
            flush_buffer(s);

        buf += len;
        size -= len;
    }
}
