
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* priv; } ;
struct TYPE_6__ {float* input_levels; int buf_size; float const* window_func_lut; TYPE_1__* input; int * rdft; } ;
struct TYPE_5__ {scalar_t__* extended_data; } ;
typedef TYPE_2__ AudioSurroundContext ;
typedef TYPE_3__ AVFilterContext ;


 int av_rdft_calc (int ,float*) ;
 int memset (scalar_t__,int ,int) ;

__attribute__((used)) static int fft_channel(AVFilterContext *ctx, void *arg, int ch, int nb_jobs)
{
    AudioSurroundContext *s = ctx->priv;
    const float level_in = s->input_levels[ch];
    float *dst;
    int n;

    memset(s->input->extended_data[ch] + s->buf_size * sizeof(float), 0, s->buf_size * sizeof(float));

    dst = (float *)s->input->extended_data[ch];
    for (n = 0; n < s->buf_size; n++) {
        dst[n] *= s->window_func_lut[n] * level_in;
    }

    av_rdft_calc(s->rdft[ch], (float *)s->input->extended_data[ch]);

    return 0;
}
