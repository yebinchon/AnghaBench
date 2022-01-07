
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_3__ {int excitation; int * audio; } ;
typedef TYPE_1__ G723_1_ChannelContext ;


 scalar_t__ FRAME_LEN ;
 int LPC_ORDER ;
 int PITCH_MAX ;
 int SUBFRAME_LEN ;
 int autocorr_max (int *,int,int*,int,int,int) ;
 int av_sat_add32 (int,int) ;
 int ff_g723_1_dot_product (int *,int *,int) ;
 int ff_g723_1_scale_vector (int *,int ,scalar_t__) ;

__attribute__((used)) static int comp_interp_index(G723_1_ChannelContext *p, int pitch_lag,
                             int *exc_eng, int *scale)
{
    int offset = PITCH_MAX + 2 * SUBFRAME_LEN;
    int16_t *buf = p->audio + LPC_ORDER;

    int index, ccr, tgt_eng, best_eng, temp;

    *scale = ff_g723_1_scale_vector(buf, p->excitation, FRAME_LEN + PITCH_MAX);
    buf += offset;


    ccr = 0;
    index = autocorr_max(buf, offset, &ccr, pitch_lag, SUBFRAME_LEN * 2, -1);
    ccr = av_sat_add32(ccr, 1 << 15) >> 16;


    tgt_eng = ff_g723_1_dot_product(buf, buf, SUBFRAME_LEN * 2);
    *exc_eng = av_sat_add32(tgt_eng, 1 << 15) >> 16;

    if (ccr <= 0)
        return 0;


    best_eng = ff_g723_1_dot_product(buf - index, buf - index,
                                     SUBFRAME_LEN * 2);
    best_eng = av_sat_add32(best_eng, 1 << 15) >> 16;

    temp = best_eng * *exc_eng >> 3;

    if (temp < ccr * ccr) {
        return index;
    } else
        return 0;
}
