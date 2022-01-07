
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct frame_type_desc {scalar_t__ acb_type; int n_blocks; } ;
struct TYPE_5__ {int lsps; } ;
typedef TYPE_1__ WMAVoiceContext ;
typedef int GetBitContext ;


 scalar_t__ ACB_TYPE_NONE ;
 int MAX_LSPS ;
 double cos (double const) ;
 int ff_acelp_lspd2lpc (double*,float*,int) ;
 int ff_celp_lp_synthesis_filterf (float*,float*,float*,int,int) ;
 int synth_block_fcb_acb (TYPE_1__*,int *,int,int,int,struct frame_type_desc const*,float*) ;
 int synth_block_hardcoded (TYPE_1__*,int *,int,int,struct frame_type_desc const*,float*) ;

__attribute__((used)) static void synth_block(WMAVoiceContext *s, GetBitContext *gb,
                        int block_idx, int size,
                        int block_pitch_sh2,
                        const double *lsps, const double *prev_lsps,
                        const struct frame_type_desc *frame_desc,
                        float *excitation, float *synth)
{
    double i_lsps[MAX_LSPS];
    float lpcs[MAX_LSPS];
    float fac;
    int n;

    if (frame_desc->acb_type == ACB_TYPE_NONE)
        synth_block_hardcoded(s, gb, block_idx, size, frame_desc, excitation);
    else
        synth_block_fcb_acb(s, gb, block_idx, size, block_pitch_sh2,
                            frame_desc, excitation);


    fac = (block_idx + 0.5) / frame_desc->n_blocks;
    for (n = 0; n < s->lsps; n++)
        i_lsps[n] = cos(prev_lsps[n] + fac * (lsps[n] - prev_lsps[n]));
    ff_acelp_lspd2lpc(i_lsps, lpcs, s->lsps >> 1);


    ff_celp_lp_synthesis_filterf(synth, lpcs, excitation, size, s->lsps);
}
