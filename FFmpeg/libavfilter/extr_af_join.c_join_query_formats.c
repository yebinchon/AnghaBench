
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int nb_inputs; TYPE_2__** inputs; TYPE_1__** outputs; TYPE_3__* priv; } ;
struct TYPE_10__ {int channel_layout; } ;
struct TYPE_9__ {int out_channel_layouts; } ;
struct TYPE_8__ {int in_channel_layouts; } ;
typedef TYPE_3__ JoinContext ;
typedef TYPE_4__ AVFilterContext ;
typedef int AVFilterChannelLayouts ;


 int ff_add_channel_layout (int **,int ) ;
 int * ff_all_channel_layouts () ;
 int ff_all_samplerates () ;
 int ff_channel_layouts_ref (int *,int *) ;
 int ff_planar_sample_fmts () ;
 int ff_set_common_formats (TYPE_4__*,int ) ;
 int ff_set_common_samplerates (TYPE_4__*,int ) ;

__attribute__((used)) static int join_query_formats(AVFilterContext *ctx)
{
    JoinContext *s = ctx->priv;
    AVFilterChannelLayouts *layouts = ((void*)0);
    int i, ret;

    if ((ret = ff_add_channel_layout(&layouts, s->channel_layout)) < 0 ||
        (ret = ff_channel_layouts_ref(layouts, &ctx->outputs[0]->in_channel_layouts)) < 0)
        return ret;

    for (i = 0; i < ctx->nb_inputs; i++) {
        layouts = ff_all_channel_layouts();
        if ((ret = ff_channel_layouts_ref(layouts, &ctx->inputs[i]->out_channel_layouts)) < 0)
            return ret;
    }

    if ((ret = ff_set_common_formats(ctx, ff_planar_sample_fmts())) < 0 ||
        (ret = ff_set_common_samplerates(ctx, ff_all_samplerates())) < 0)
        return ret;

    return 0;
}
