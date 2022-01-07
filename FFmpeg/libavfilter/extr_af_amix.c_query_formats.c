
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* channel_layouts; } ;
typedef int AVFilterFormats ;
typedef int AVFilterContext ;
typedef TYPE_1__ AVFilterChannelLayouts ;


 int AVERROR (int ) ;
 int AV_SAMPLE_FMT_DBL ;
 int AV_SAMPLE_FMT_DBLP ;
 int AV_SAMPLE_FMT_FLT ;
 int AV_SAMPLE_FMT_FLTP ;
 int ENOMEM ;
 int av_freep (TYPE_1__**) ;
 int ff_add_format (int **,int ) ;
 TYPE_1__* ff_all_channel_counts () ;
 int ff_all_samplerates () ;
 int ff_set_common_channel_layouts (int *,TYPE_1__*) ;
 int ff_set_common_formats (int *,int *) ;
 int ff_set_common_samplerates (int *,int ) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    AVFilterFormats *formats = ((void*)0);
    AVFilterChannelLayouts *layouts;
    int ret;

    layouts = ff_all_channel_counts();
    if (!layouts) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }

    if ((ret = ff_add_format(&formats, AV_SAMPLE_FMT_FLT )) < 0 ||
        (ret = ff_add_format(&formats, AV_SAMPLE_FMT_FLTP)) < 0 ||
        (ret = ff_add_format(&formats, AV_SAMPLE_FMT_DBL )) < 0 ||
        (ret = ff_add_format(&formats, AV_SAMPLE_FMT_DBLP)) < 0 ||
        (ret = ff_set_common_formats (ctx, formats)) < 0 ||
        (ret = ff_set_common_channel_layouts(ctx, layouts)) < 0 ||
        (ret = ff_set_common_samplerates(ctx, ff_all_samplerates())) < 0)
        goto fail;
    return 0;
fail:
    if (layouts)
        av_freep(&layouts->channel_layouts);
    av_freep(&layouts);
    return ret;
}
