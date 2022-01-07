
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_3__ {int ** sb_samples; int * synth_buf_offset; int * synth_buf; int mpadsp; } ;
typedef TYPE_1__ MPCContext ;


 int SAMPLES_PER_BAND ;
 int ff_mpa_synth_filter_fixed (int *,int ,int *,int ,int*,int *,int,int ) ;
 int ff_mpa_synth_window_fixed ;

__attribute__((used)) static void mpc_synth(MPCContext *c, int16_t **out, int channels)
{
    int dither_state = 0;
    int i, ch;

    for(ch = 0; ch < channels; ch++){
        for(i = 0; i < SAMPLES_PER_BAND; i++) {
            ff_mpa_synth_filter_fixed(&c->mpadsp,
                                c->synth_buf[ch], &(c->synth_buf_offset[ch]),
                                ff_mpa_synth_window_fixed, &dither_state,
                                out[ch] + 32 * i, 1,
                                c->sb_samples[ch][i]);
        }
    }
}
