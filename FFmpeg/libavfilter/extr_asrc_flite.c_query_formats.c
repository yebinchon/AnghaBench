
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_10__ {TYPE_2__* priv; } ;
struct TYPE_9__ {TYPE_1__* wave; } ;
struct TYPE_8__ {int sample_rate; int num_channels; } ;
typedef TYPE_2__ FliteContext ;
typedef int AVFilterFormats ;
typedef TYPE_3__ AVFilterContext ;
typedef int AVFilterChannelLayouts ;


 int AV_SAMPLE_FMT_S16 ;
 int av_get_default_channel_layout (int ) ;
 int ff_add_channel_layout (int **,int ) ;
 int ff_add_format (int **,int ) ;
 int ff_set_common_channel_layouts (TYPE_3__*,int *) ;
 int ff_set_common_formats (TYPE_3__*,int *) ;
 int ff_set_common_samplerates (TYPE_3__*,int *) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    FliteContext *flite = ctx->priv;
    int ret;

    AVFilterChannelLayouts *chlayouts = ((void*)0);
    int64_t chlayout = av_get_default_channel_layout(flite->wave->num_channels);
    AVFilterFormats *sample_formats = ((void*)0);
    AVFilterFormats *sample_rates = ((void*)0);

    if ((ret = ff_add_channel_layout (&chlayouts , chlayout )) < 0 ||
        (ret = ff_set_common_channel_layouts (ctx , chlayouts )) < 0 ||
        (ret = ff_add_format (&sample_formats, AV_SAMPLE_FMT_S16 )) < 0 ||
        (ret = ff_set_common_formats (ctx , sample_formats )) < 0 ||
        (ret = ff_add_format (&sample_rates , flite->wave->sample_rate)) < 0 ||
        (ret = ff_set_common_samplerates (ctx , sample_rates )) < 0)
        return ret;

    return 0;
}
