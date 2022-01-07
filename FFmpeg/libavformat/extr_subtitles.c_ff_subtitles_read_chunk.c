
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pb; scalar_t__ type; scalar_t__ buf_len; scalar_t__ buf_pos; } ;
typedef TYPE_1__ FFTextReader ;
typedef int AVIOContext ;
typedef int AVBPrint ;


 int ff_subtitles_read_text_chunk (TYPE_1__*,int *) ;

void ff_subtitles_read_chunk(AVIOContext *pb, AVBPrint *buf)
{
    FFTextReader tr;
    tr.buf_pos = tr.buf_len = 0;
    tr.type = 0;
    tr.pb = pb;
    ff_subtitles_read_text_chunk(&tr, buf);
}
