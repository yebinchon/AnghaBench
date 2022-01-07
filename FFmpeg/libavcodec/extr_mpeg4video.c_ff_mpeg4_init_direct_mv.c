
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int** direct_scale_mv; int pb_time; int pp_time; } ;
typedef TYPE_1__ MpegEncContext ;


 int tab_bias ;
 int tab_size ;

void ff_mpeg4_init_direct_mv(MpegEncContext *s)
{
    int i;
    for (i = 0; i < tab_size; i++) {
        s->direct_scale_mv[0][i] = (i - tab_bias) * s->pb_time / s->pp_time;
        s->direct_scale_mv[1][i] = (i - tab_bias) * (s->pb_time - s->pp_time) /
                                   s->pp_time;
    }
}
