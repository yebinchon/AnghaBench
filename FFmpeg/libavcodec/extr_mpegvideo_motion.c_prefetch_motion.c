
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int (* prefetch ) (int *,int,int) ;} ;
struct TYPE_5__ {int const*** mv; int mb_x; int mb_y; int const linesize; int const uvlinesize; TYPE_1__ vdsp; scalar_t__ quarter_sample; } ;
typedef TYPE_2__ MpegEncContext ;


 int stub1 (int *,int const,int) ;
 int stub2 (int *,int,int) ;

__attribute__((used)) static inline void prefetch_motion(MpegEncContext *s, uint8_t **pix, int dir)
{


    const int shift = s->quarter_sample ? 2 : 1;
    const int mx = (s->mv[dir][0][0] >> shift) + 16 * s->mb_x + 8;
    const int my = (s->mv[dir][0][1] >> shift) + 16 * s->mb_y;
    int off = mx + (my + (s->mb_x & 3) * 4) * s->linesize + 64;

    s->vdsp.prefetch(pix[0] + off, s->linesize, 4);
    off = (mx >> 1) + ((my >> 1) + (s->mb_x & 7)) * s->uvlinesize + 64;
    s->vdsp.prefetch(pix[1] + off, pix[2] - pix[1], 2);
}
