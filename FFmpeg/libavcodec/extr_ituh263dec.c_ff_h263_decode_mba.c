
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mb_num; int mb_x; int mb_width; int mb_y; int gb; } ;
typedef TYPE_1__ MpegEncContext ;


 int * ff_mba_length ;
 int* ff_mba_max ;
 int get_bits (int *,int ) ;

int ff_h263_decode_mba(MpegEncContext *s)
{
    int i, mb_pos;

    for (i = 0; i < 6; i++)
        if (s->mb_num - 1 <= ff_mba_max[i])
            break;
    mb_pos = get_bits(&s->gb, ff_mba_length[i]);
    s->mb_x = mb_pos % s->mb_width;
    s->mb_y = mb_pos / s->mb_width;

    return mb_pos;
}
