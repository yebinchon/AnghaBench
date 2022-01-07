
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* out; TYPE_4__* in; } ;
typedef TYPE_2__ ThreadData ;
struct TYPE_14__ {int is_disabled; TYPE_3__* priv; TYPE_5__** inputs; } ;
struct TYPE_13__ {int channel_layout; } ;
struct TYPE_12__ {int channels; int nb_samples; int * extended_data; } ;
struct TYPE_11__ {int channels; int block_align; TYPE_1__* cache; int a2; int a1; int b2; int b1; int b0; int (* filter ) (TYPE_3__*,int ,int ,int,int *,int *,int *,int *,int ,int ,int ,int ,int ,int *,int ) ;} ;
struct TYPE_9__ {int clippings; int o2; int o1; int i2; int i1; } ;
typedef TYPE_3__ BiquadsContext ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVFilterLink ;
typedef TYPE_6__ AVFilterContext ;


 int av_channel_layout_extract_channel (int ,int) ;
 int memcpy (int ,int ,int) ;
 int stub1 (TYPE_3__*,int ,int ,int,int *,int *,int *,int *,int ,int ,int ,int ,int ,int *,int ) ;

__attribute__((used)) static int filter_channel(AVFilterContext *ctx, void *arg, int jobnr, int nb_jobs)
{
    AVFilterLink *inlink = ctx->inputs[0];
    ThreadData *td = arg;
    AVFrame *buf = td->in;
    AVFrame *out_buf = td->out;
    BiquadsContext *s = ctx->priv;
    const int start = (buf->channels * jobnr) / nb_jobs;
    const int end = (buf->channels * (jobnr+1)) / nb_jobs;
    int ch;

    for (ch = start; ch < end; ch++) {
        if (!((av_channel_layout_extract_channel(inlink->channel_layout, ch) & s->channels))) {
            if (buf != out_buf)
                memcpy(out_buf->extended_data[ch], buf->extended_data[ch],
                       buf->nb_samples * s->block_align);
            continue;
        }

        s->filter(s, buf->extended_data[ch], out_buf->extended_data[ch], buf->nb_samples,
                  &s->cache[ch].i1, &s->cache[ch].i2, &s->cache[ch].o1, &s->cache[ch].o2,
                  s->b0, s->b1, s->b2, s->a1, s->a2, &s->cache[ch].clippings, ctx->is_disabled);
    }

    return 0;
}
