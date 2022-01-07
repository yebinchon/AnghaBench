
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {TYPE_1__ s; } ;
typedef TYPE_2__ hb_buffer_t ;


 int HB_BUF_FLAG_EOF ;
 TYPE_2__* hb_buffer_init (int ) ;

hb_buffer_t * hb_buffer_eof_init(void)
{
    hb_buffer_t * buf = hb_buffer_init(0);
    buf->s.flags = HB_BUF_FLAG_EOF;
    return buf;
}
