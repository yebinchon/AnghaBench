
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_7__ {TYPE_2__** outputs; TYPE_2__** inputs; TYPE_1__* priv; } ;
struct TYPE_6__ {int out_formats; int in_samplerates; int in_channel_layouts; int in_formats; } ;
struct TYPE_5__ {int sample_rate; int channels; } ;
typedef TYPE_1__ SpectrumSynthContext ;
typedef TYPE_2__ AVFilterLink ;
typedef int AVFilterFormats ;
typedef TYPE_3__ AVFilterContext ;
typedef int AVFilterChannelLayouts ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int FF_COUNT2LAYOUT (int ) ;
 int ff_add_channel_layout (int **,int ) ;
 int ff_channel_layouts_ref (int *,int *) ;
 int ff_formats_ref (int *,int *) ;
 int * ff_make_format_list (int const*) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    SpectrumSynthContext *s = ctx->priv;
    AVFilterFormats *formats = ((void*)0);
    AVFilterChannelLayouts *layout = ((void*)0);
    AVFilterLink *magnitude = ctx->inputs[0];
    AVFilterLink *phase = ctx->inputs[1];
    AVFilterLink *outlink = ctx->outputs[0];
    static const enum AVSampleFormat sample_fmts[] = { 129, 128 };
    static const enum AVPixelFormat pix_fmts[] = { 134, 135,
                                                   132, 130,
                                                   131, 133 };
    int ret, sample_rates[] = { 48000, -1 };

    formats = ff_make_format_list(sample_fmts);
    if ((ret = ff_formats_ref (formats, &outlink->in_formats )) < 0 ||
        (ret = ff_add_channel_layout (&layout, FF_COUNT2LAYOUT(s->channels))) < 0 ||
        (ret = ff_channel_layouts_ref (layout , &outlink->in_channel_layouts)) < 0)
        return ret;

    sample_rates[0] = s->sample_rate;
    formats = ff_make_format_list(sample_rates);
    if (!formats)
        return AVERROR(ENOMEM);
    if ((ret = ff_formats_ref(formats, &outlink->in_samplerates)) < 0)
        return ret;

    formats = ff_make_format_list(pix_fmts);
    if (!formats)
        return AVERROR(ENOMEM);
    if ((ret = ff_formats_ref(formats, &magnitude->out_formats)) < 0)
        return ret;

    formats = ff_make_format_list(pix_fmts);
    if (!formats)
        return AVERROR(ENOMEM);
    if ((ret = ff_formats_ref(formats, &phase->out_formats)) < 0)
        return ret;

    return 0;
}
