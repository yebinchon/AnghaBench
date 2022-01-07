
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
typedef int AVFilterFormats ;
typedef int AVFilterContext ;
typedef int AVFilterChannelLayouts ;


 int AVERROR (int ) ;
 int AV_CH_LAYOUT_STEREO ;






 int ENOMEM ;
 scalar_t__ ff_add_channel_layout (int **,int ) ;
 int * ff_all_samplerates () ;
 int * ff_make_format_list (int const*) ;
 int ff_set_common_channel_layouts (int *,int *) ;
 int ff_set_common_formats (int *,int *) ;
 int ff_set_common_samplerates (int *,int *) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    AVFilterFormats *formats = ((void*)0);
    AVFilterChannelLayouts *layouts = ((void*)0);

    static const enum AVSampleFormat sample_fmts[] = {
        128,
        130,
        129,
        132,
        133,
        131,
    };
    int ret;

    if (ff_add_channel_layout(&layouts, AV_CH_LAYOUT_STEREO) != 0)
        return AVERROR(ENOMEM);
    ret = ff_set_common_channel_layouts(ctx, layouts);
    if (ret < 0)
        return ret;

    formats = ff_make_format_list(sample_fmts);
    if (!formats)
        return AVERROR(ENOMEM);
    ret = ff_set_common_formats(ctx, formats);
    if (ret < 0)
        return ret;

    formats = ff_all_samplerates();
    if (!formats)
        return AVERROR(ENOMEM);
    return ff_set_common_samplerates(ctx, formats);
}
