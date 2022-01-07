
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_11__ {int nb_outputs; TYPE_2__** outputs; TYPE_1__** inputs; TYPE_3__* priv; } ;
struct TYPE_10__ {int * map; int channel_layout; } ;
struct TYPE_9__ {int in_channel_layouts; } ;
struct TYPE_8__ {int out_channel_layouts; } ;
typedef TYPE_3__ ChannelSplitContext ;
typedef TYPE_4__ AVFilterContext ;
typedef int AVFilterChannelLayouts ;


 int av_channel_layout_extract_channel (int ,int ) ;
 int ff_add_channel_layout (int **,int ) ;
 int ff_all_samplerates () ;
 int ff_channel_layouts_ref (int *,int *) ;
 int ff_planar_sample_fmts () ;
 int ff_set_common_formats (TYPE_4__*,int ) ;
 int ff_set_common_samplerates (TYPE_4__*,int ) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    ChannelSplitContext *s = ctx->priv;
    AVFilterChannelLayouts *in_layouts = ((void*)0);
    int i, ret;

    if ((ret = ff_set_common_formats(ctx, ff_planar_sample_fmts())) < 0 ||
        (ret = ff_set_common_samplerates(ctx, ff_all_samplerates())) < 0)
        return ret;

    if ((ret = ff_add_channel_layout(&in_layouts, s->channel_layout)) < 0 ||
        (ret = ff_channel_layouts_ref(in_layouts, &ctx->inputs[0]->out_channel_layouts)) < 0)
        return ret;

    for (i = 0; i < ctx->nb_outputs; i++) {
        AVFilterChannelLayouts *out_layouts = ((void*)0);
        uint64_t channel = av_channel_layout_extract_channel(s->channel_layout, s->map[i]);

        if ((ret = ff_add_channel_layout(&out_layouts, channel)) < 0 ||
            (ret = ff_channel_layouts_ref(out_layouts, &ctx->outputs[i]->in_channel_layouts)) < 0)
            return ret;
    }

    return 0;
}
