
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ picture_structure; int mv_type; int*** mv; int mb_height; scalar_t__ mb_y; scalar_t__ mcsel; int quarter_sample; } ;
typedef TYPE_1__ MpegEncContext ;


 int FFMAX (int,int) ;
 int FFMIN (int,int) ;
 int INT_MAX ;
 int INT_MIN ;



 scalar_t__ PICT_FRAME ;
 int av_clip (scalar_t__,int ,int) ;

__attribute__((used)) static int lowest_referenced_row(MpegEncContext *s, int dir)
{
    int my_max = INT_MIN, my_min = INT_MAX, qpel_shift = !s->quarter_sample;
    int my, off, i, mvs;

    if (s->picture_structure != PICT_FRAME || s->mcsel)
        goto unhandled;

    switch (s->mv_type) {
        case 130:
            mvs = 1;
            break;
        case 129:
            mvs = 2;
            break;
        case 128:
            mvs = 4;
            break;
        default:
            goto unhandled;
    }

    for (i = 0; i < mvs; i++) {
        my = s->mv[dir][i][1];
        my_max = FFMAX(my_max, my);
        my_min = FFMIN(my_min, my);
    }

    off = ((FFMAX(-my_min, my_max)<<qpel_shift) + 63) >> 6;

    return av_clip(s->mb_y + off, 0, s->mb_height - 1);
unhandled:
    return s->mb_height-1;
}
