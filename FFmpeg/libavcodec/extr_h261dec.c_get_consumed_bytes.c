
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gb; } ;
typedef TYPE_1__ MpegEncContext ;


 int get_bits_count (int *) ;

__attribute__((used)) static int get_consumed_bytes(MpegEncContext *s, int buf_size)
{
    int pos = get_bits_count(&s->gb) >> 3;
    if (pos == 0)
        pos = 1;
    if (pos + 10 > buf_size)
        pos = buf_size;

    return pos;
}
