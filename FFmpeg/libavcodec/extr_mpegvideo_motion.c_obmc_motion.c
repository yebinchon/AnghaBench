
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int op_pixels_func ;
typedef scalar_t__ int16_t ;
struct TYPE_5__ {int * obmc_scratchpad; } ;
struct TYPE_6__ {scalar_t__ quarter_sample; int linesize; TYPE_1__ sc; } ;
typedef TYPE_2__ MpegEncContext ;


 size_t MID ;
 int av_assert2 (int) ;
 int hpel_motion (TYPE_2__*,int *,int *,int,int,int *,scalar_t__,scalar_t__) ;
 int put_obmc (int *,int **,int) ;

__attribute__((used)) static inline void obmc_motion(MpegEncContext *s,
                               uint8_t *dest, uint8_t *src,
                               int src_x, int src_y,
                               op_pixels_func *pix_op,
                               int16_t mv[5][2] )

{
    int i;
    uint8_t *ptr[5];

    av_assert2(s->quarter_sample == 0);

    for (i = 0; i < 5; i++) {
        if (i && mv[i][0] == mv[0][0] && mv[i][1] == mv[0][1]) {
            ptr[i] = ptr[0];
        } else {
            ptr[i] = s->sc.obmc_scratchpad + 8 * (i & 1) +
                     s->linesize * 8 * (i >> 1);
            hpel_motion(s, ptr[i], src, src_x, src_y, pix_op,
                        mv[i][0], mv[i][1]);
        }
    }

    put_obmc(dest, ptr, s->linesize);
}
