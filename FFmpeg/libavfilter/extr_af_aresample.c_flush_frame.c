
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_13__ {int swr; } ;
struct TYPE_12__ {TYPE_2__** inputs; TYPE_4__* priv; } ;
struct TYPE_11__ {int sample_rate; TYPE_3__* src; } ;
struct TYPE_10__ {int nb_samples; int pts; int sample_rate; scalar_t__ extended_data; } ;
typedef TYPE_1__ AVFrame ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;
typedef TYPE_4__ AResampleContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int ENOMEM ;
 int INT64_MIN ;
 int ROUNDED_DIV (int ,int ) ;
 int av_frame_free (TYPE_1__**) ;
 TYPE_1__* ff_get_audio_buffer (TYPE_2__*,int) ;
 int swr_convert (int ,scalar_t__,int,void*,int ) ;
 int swr_next_pts (int ,int ) ;

__attribute__((used)) static int flush_frame(AVFilterLink *outlink, int final, AVFrame **outsamplesref_ret)
{
    AVFilterContext *ctx = outlink->src;
    AResampleContext *aresample = ctx->priv;
    AVFilterLink *const inlink = outlink->src->inputs[0];
    AVFrame *outsamplesref;
    int n_out = 4096;
    int64_t pts;

    outsamplesref = ff_get_audio_buffer(outlink, n_out);
    *outsamplesref_ret = outsamplesref;
    if (!outsamplesref)
        return AVERROR(ENOMEM);

    pts = swr_next_pts(aresample->swr, INT64_MIN);
    pts = ROUNDED_DIV(pts, inlink->sample_rate);

    n_out = swr_convert(aresample->swr, outsamplesref->extended_data, n_out, final ? ((void*)0) : (void*)outsamplesref->extended_data, 0);
    if (n_out <= 0) {
        av_frame_free(&outsamplesref);
        return (n_out == 0) ? AVERROR_EOF : n_out;
    }

    outsamplesref->sample_rate = outlink->sample_rate;
    outsamplesref->nb_samples = n_out;

    outsamplesref->pts = pts;

    return 0;
}
