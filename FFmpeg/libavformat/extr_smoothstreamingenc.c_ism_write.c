
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ cur_pos; scalar_t__ tail_pos; scalar_t__ out2; scalar_t__ out; } ;
typedef TYPE_1__ OutputStream ;


 int ffurl_write (scalar_t__,int *,int) ;

__attribute__((used)) static int ism_write(void *opaque, uint8_t *buf, int buf_size)
{
    OutputStream *os = opaque;
    if (os->out)
        ffurl_write(os->out, buf, buf_size);
    if (os->out2)
        ffurl_write(os->out2, buf, buf_size);
    os->cur_pos += buf_size;
    if (os->cur_pos >= os->tail_pos)
        os->tail_pos = os->cur_pos;
    return buf_size;
}
