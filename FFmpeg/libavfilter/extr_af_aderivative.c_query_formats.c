
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_8__ {TYPE_1__* filter; } ;
struct TYPE_7__ {int name; } ;
typedef int AVFilterFormats ;
typedef TYPE_2__ AVFilterContext ;
typedef int AVFilterChannelLayouts ;


 int AVERROR (int ) ;





 int ENOMEM ;
 int * ff_all_channel_counts () ;
 int * ff_all_samplerates () ;
 int * ff_make_format_list (int const*) ;
 int ff_set_common_channel_layouts (TYPE_2__*,int *) ;
 int ff_set_common_formats (TYPE_2__*,int *) ;
 int ff_set_common_samplerates (TYPE_2__*,int *) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    AVFilterFormats *formats = ((void*)0);
    AVFilterChannelLayouts *layouts = ((void*)0);
    static const enum AVSampleFormat derivative_sample_fmts[] = {
        129, 131,
        128, 132,
        130
    };
    static const enum AVSampleFormat integral_sample_fmts[] = {
        131, 132,
        130
    };
    int ret;

    formats = ff_make_format_list(strcmp(ctx->filter->name, "aintegral") ?
                                  derivative_sample_fmts : integral_sample_fmts);
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
