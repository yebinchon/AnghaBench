
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mb_info; int prev_mb_info; int last_mb_info; scalar_t__ mb_info_size; int pb; } ;
typedef TYPE_1__ MpegEncContext ;


 int put_bits_count (int *) ;
 int write_mb_info (TYPE_1__*) ;

__attribute__((used)) static void update_mb_info(MpegEncContext *s, int startcode)
{
    if (!s->mb_info)
        return;
    if (put_bits_count(&s->pb) - s->prev_mb_info*8 >= s->mb_info*8) {
        s->mb_info_size += 12;
        s->prev_mb_info = s->last_mb_info;
    }
    if (startcode) {
        s->prev_mb_info = put_bits_count(&s->pb)/8;




        return;
    }

    s->last_mb_info = put_bits_count(&s->pb)/8;
    if (!s->mb_info_size)
        s->mb_info_size += 12;
    write_mb_info(s);
}
