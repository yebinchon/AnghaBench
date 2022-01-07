
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int64_t ;
typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {int chlayout; int sample_rate; int nb_channels; } ;
typedef TYPE_1__ EvalContext ;
typedef int AVFilterFormats ;
typedef TYPE_2__ AVFilterContext ;
typedef int AVFilterChannelLayouts ;


 int AVERROR (int ) ;


 int ENOMEM ;
 int FF_COUNT2LAYOUT (int ) ;
 int * avfilter_make_format64_list (int*) ;
 int * ff_make_format_list (int const*) ;
 int ff_set_common_channel_layouts (TYPE_2__*,int *) ;
 int ff_set_common_formats (TYPE_2__*,int *) ;
 int ff_set_common_samplerates (TYPE_2__*,int *) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    EvalContext *eval = ctx->priv;
    static const enum AVSampleFormat sample_fmts[] = { 129, 128 };
    int64_t chlayouts[] = { eval->chlayout ? eval->chlayout : FF_COUNT2LAYOUT(eval->nb_channels) , -1 };
    int sample_rates[] = { eval->sample_rate, -1 };
    AVFilterFormats *formats;
    AVFilterChannelLayouts *layouts;
    int ret;

    formats = ff_make_format_list(sample_fmts);
    if (!formats)
        return AVERROR(ENOMEM);
    ret = ff_set_common_formats (ctx, formats);
    if (ret < 0)
        return ret;

    layouts = avfilter_make_format64_list(chlayouts);
    if (!layouts)
        return AVERROR(ENOMEM);
    ret = ff_set_common_channel_layouts(ctx, layouts);
    if (ret < 0)
        return ret;

    formats = ff_make_format_list(sample_rates);
    if (!formats)
        return AVERROR(ENOMEM);
    return ff_set_common_samplerates(ctx, formats);
}
