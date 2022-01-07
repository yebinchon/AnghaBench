
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buf_pos; int buf_len; int* buf; int pb; } ;
typedef TYPE_1__ FFTextReader ;


 int avio_feof (int ) ;
 int ff_text_r8 (TYPE_1__*) ;

int ff_text_peek_r8(FFTextReader *r)
{
    int c;
    if (r->buf_pos < r->buf_len)
        return r->buf[r->buf_pos];
    c = ff_text_r8(r);
    if (!avio_feof(r->pb)) {
        r->buf_pos = 0;
        r->buf_len = 1;
        r->buf[0] = c;
    }
    return c;
}
