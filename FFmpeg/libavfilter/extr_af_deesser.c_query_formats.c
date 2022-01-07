
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
typedef int AVFilterFormats ;
typedef int AVFilterContext ;
typedef int AVFilterChannelLayouts ;


 int AVERROR (int ) ;


 int ENOMEM ;
 int * ff_all_channel_counts () ;
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
        129,
        128
    };
    int ret;

    formats = ff_make_format_list(sample_fmts);
    if (!formats)
        return AVERROR(ENOMEM);
    ret = ff_set_common_formats(ctx, formats);
    if (ret < 0)
        return ret;

    layouts = ff_all_channel_counts();
    if (!layouts)
        return AVERROR(ENOMEM);

    ret = ff_set_common_channel_layouts(ctx, layouts);
    if (ret < 0)
        return ret;

    formats = ff_all_samplerates();
    return ff_set_common_samplerates(ctx, formats);
}
