
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* out; TYPE_3__* in; } ;
typedef TYPE_1__ ThreadData ;
struct TYPE_10__ {TYPE_2__* priv; } ;
struct TYPE_9__ {int channels; scalar_t__* extended_data; } ;
struct TYPE_8__ {int * st; } ;
typedef TYPE_2__ AudioRNNContext ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterContext ;


 int rnnoise_channel (TYPE_2__*,int *,float*,float const*) ;

__attribute__((used)) static int rnnoise_channels(AVFilterContext *ctx, void *arg, int jobnr, int nb_jobs)
{
    AudioRNNContext *s = ctx->priv;
    ThreadData *td = arg;
    AVFrame *in = td->in;
    AVFrame *out = td->out;
    const int start = (out->channels * jobnr) / nb_jobs;
    const int end = (out->channels * (jobnr+1)) / nb_jobs;

    for (int ch = start; ch < end; ch++) {
        rnnoise_channel(s, &s->st[ch],
                        (float *)out->extended_data[ch],
                        (const float *)in->extended_data[ch]);
    }

    return 0;
}
