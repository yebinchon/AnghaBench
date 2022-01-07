
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bitrate; float const* prev_lspf; } ;
typedef TYPE_1__ QCELPContext ;


 scalar_t__ I_F_Q ;
 scalar_t__ RATE_OCTAVE ;
 scalar_t__ RATE_QUARTER ;
 scalar_t__ SILENCE ;
 int ff_weighted_vector_sumf (float*,float const*,float const*,float,double,int) ;
 int lspf2lpc (float const*,float*) ;

__attribute__((used)) static void interpolate_lpc(QCELPContext *q, const float *curr_lspf,
                            float *lpc, const int subframe_num)
{
    float interpolated_lspf[10];
    float weight;

    if (q->bitrate >= RATE_QUARTER)
        weight = 0.25 * (subframe_num + 1);
    else if (q->bitrate == RATE_OCTAVE && !subframe_num)
        weight = 0.625;
    else
        weight = 1.0;

    if (weight != 1.0) {
        ff_weighted_vector_sumf(interpolated_lspf, curr_lspf, q->prev_lspf,
                                weight, 1.0 - weight, 10);
        lspf2lpc(interpolated_lspf, lpc);
    } else if (q->bitrate >= RATE_QUARTER ||
               (q->bitrate == I_F_Q && !subframe_num))
        lspf2lpc(curr_lspf, lpc);
    else if (q->bitrate == SILENCE && !subframe_num)
        lspf2lpc(q->prev_lspf, lpc);
}
