
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {int sample_rate; int channels; int time_base; TYPE_1__* dst; } ;
struct TYPE_17__ {int nb_samples; scalar_t__* extended_data; int pts; } ;
struct TYPE_16__ {double n; double* var_values; double* channel_values; int * expr; } ;
struct TYPE_15__ {TYPE_4__** outputs; TYPE_2__* priv; } ;
typedef TYPE_2__ EvalContext ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;


 int AVERROR (int ) ;
 int ENOMEM ;
 double TS2T (int ,int ) ;
 size_t VAR_CH ;
 size_t VAR_N ;
 size_t VAR_T ;
 double av_expr_eval (int ,int*,TYPE_2__*) ;
 int av_frame_copy_props (TYPE_3__*,TYPE_3__*) ;
 int av_frame_free (TYPE_3__**) ;
 int ff_filter_frame (TYPE_4__*,TYPE_3__*) ;
 TYPE_3__* ff_get_audio_buffer (TYPE_4__*,int) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    EvalContext *eval = inlink->dst->priv;
    AVFilterLink *outlink = inlink->dst->outputs[0];
    int nb_samples = in->nb_samples;
    AVFrame *out;
    double t0;
    int i, j;

    out = ff_get_audio_buffer(outlink, nb_samples);
    if (!out) {
        av_frame_free(&in);
        return AVERROR(ENOMEM);
    }
    av_frame_copy_props(out, in);

    t0 = TS2T(in->pts, inlink->time_base);


    for (i = 0; i < nb_samples; i++, eval->n++) {
        eval->var_values[VAR_N] = eval->n;
        eval->var_values[VAR_T] = t0 + i * (double)1/inlink->sample_rate;

        for (j = 0; j < inlink->channels; j++)
            eval->channel_values[j] = *((double *) in->extended_data[j] + i);

        for (j = 0; j < outlink->channels; j++) {
            eval->var_values[VAR_CH] = j;
            *((double *) out->extended_data[j] + i) =
                av_expr_eval(eval->expr[j], eval->var_values, eval);
        }
    }

    av_frame_free(&in);
    return ff_filter_frame(outlink, out);
}
