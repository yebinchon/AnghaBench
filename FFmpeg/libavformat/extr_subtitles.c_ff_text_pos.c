
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_3__ {scalar_t__ buf_pos; scalar_t__ buf_len; int pb; } ;
typedef TYPE_1__ FFTextReader ;


 scalar_t__ avio_tell (int ) ;

int64_t ff_text_pos(FFTextReader *r)
{
    return avio_tell(r->pb) - r->buf_len + r->buf_pos;
}
