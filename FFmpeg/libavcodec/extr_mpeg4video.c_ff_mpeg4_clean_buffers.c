
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_3__ {int b8_stride; int mb_y; int mb_x; int mb_stride; scalar_t__*** last_mv; scalar_t__* ac_val; } ;
typedef TYPE_1__ MpegEncContext ;


 int memset (scalar_t__,int ,int) ;

void ff_mpeg4_clean_buffers(MpegEncContext *s)
{
    int c_wrap, c_xy, l_wrap, l_xy;

    l_wrap = s->b8_stride;
    l_xy = (2 * s->mb_y - 1) * l_wrap + s->mb_x * 2 - 1;
    c_wrap = s->mb_stride;
    c_xy = (s->mb_y - 1) * c_wrap + s->mb_x - 1;


    memset(s->ac_val[0] + l_xy, 0, (l_wrap * 2 + 1) * 16 * sizeof(int16_t));
    memset(s->ac_val[1] + c_xy, 0, (c_wrap + 1) * 16 * sizeof(int16_t));
    memset(s->ac_val[2] + c_xy, 0, (c_wrap + 1) * 16 * sizeof(int16_t));



    s->last_mv[0][0][0] =
    s->last_mv[0][0][1] =
    s->last_mv[1][0][0] =
    s->last_mv[1][0][1] = 0;
}
