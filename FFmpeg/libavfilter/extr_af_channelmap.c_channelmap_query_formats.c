
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {struct TYPE_17__* channel_layouts; } ;
struct TYPE_16__ {TYPE_2__** outputs; TYPE_1__** inputs; TYPE_3__* priv; } ;
struct TYPE_15__ {int output_layout; } ;
struct TYPE_14__ {int in_channel_layouts; } ;
struct TYPE_13__ {int out_channel_layouts; } ;
typedef TYPE_3__ ChannelMapContext ;
typedef TYPE_4__ AVFilterContext ;
typedef TYPE_5__ AVFilterChannelLayouts ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_freep (TYPE_5__**) ;
 int ff_add_channel_layout (TYPE_5__**,int ) ;
 TYPE_5__* ff_all_channel_counts () ;
 int ff_all_samplerates () ;
 int ff_channel_layouts_ref (TYPE_5__*,int *) ;
 int ff_planar_sample_fmts () ;
 int ff_set_common_formats (TYPE_4__*,int ) ;
 int ff_set_common_samplerates (TYPE_4__*,int ) ;

__attribute__((used)) static int channelmap_query_formats(AVFilterContext *ctx)
{
    ChannelMapContext *s = ctx->priv;
    AVFilterChannelLayouts *layouts;
    AVFilterChannelLayouts *channel_layouts = ((void*)0);
    int ret;

    layouts = ff_all_channel_counts();
    if (!layouts) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }
    if ((ret = ff_add_channel_layout (&channel_layouts, s->output_layout )) < 0 ||
        (ret = ff_set_common_formats (ctx , ff_planar_sample_fmts() )) < 0 ||
        (ret = ff_set_common_samplerates (ctx , ff_all_samplerates() )) < 0 ||
        (ret = ff_channel_layouts_ref (layouts , &ctx->inputs[0]->out_channel_layouts)) < 0 ||
        (ret = ff_channel_layouts_ref (channel_layouts , &ctx->outputs[0]->in_channel_layouts)) < 0)
            goto fail;

    return 0;
fail:
    if (layouts)
        av_freep(&layouts->channel_layouts);
    av_freep(&layouts);
    return ret;
}
