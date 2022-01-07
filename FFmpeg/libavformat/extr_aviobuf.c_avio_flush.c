
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ buf_ptr_max; scalar_t__ buf_ptr; scalar_t__ write_flag; } ;
typedef TYPE_1__ AVIOContext ;


 int FFMIN (int ,scalar_t__) ;
 int SEEK_CUR ;
 int avio_seek (TYPE_1__*,int,int ) ;
 int flush_buffer (TYPE_1__*) ;

void avio_flush(AVIOContext *s)
{
    int seekback = s->write_flag ? FFMIN(0, s->buf_ptr - s->buf_ptr_max) : 0;
    flush_buffer(s);
    if (seekback)
        avio_seek(s, seekback, SEEK_CUR);
}
