
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * outputs; int * inputs; TYPE_1__* priv; } ;
struct TYPE_4__ {int nb_inputs; int* input_state; int * fifos; } ;
typedef TYPE_1__ MixContext ;
typedef TYPE_2__ AVFilterContext ;


 int INPUT_EOF ;
 int INPUT_ON ;
 int av_assert0 (int) ;
 int av_audio_fifo_size (int ) ;
 int ff_inlink_request_frame (int ) ;
 int output_frame (int ) ;

__attribute__((used)) static int request_samples(AVFilterContext *ctx, int min_samples)
{
    MixContext *s = ctx->priv;
    int i;

    av_assert0(s->nb_inputs > 1);

    for (i = 1; i < s->nb_inputs; i++) {
        if (!(s->input_state[i] & INPUT_ON) ||
             (s->input_state[i] & INPUT_EOF))
            continue;
        if (av_audio_fifo_size(s->fifos[i]) >= min_samples)
            continue;
        ff_inlink_request_frame(ctx->inputs[i]);
    }
    return output_frame(ctx->outputs[0]);
}
