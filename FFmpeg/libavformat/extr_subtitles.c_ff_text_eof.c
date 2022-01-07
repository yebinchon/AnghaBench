
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buf_pos; scalar_t__ buf_len; int pb; } ;
typedef TYPE_1__ FFTextReader ;


 scalar_t__ avio_feof (int ) ;

int ff_text_eof(FFTextReader *r)
{
    return r->buf_pos >= r->buf_len && avio_feof(r->pb);
}
