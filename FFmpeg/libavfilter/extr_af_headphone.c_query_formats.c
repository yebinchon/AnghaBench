
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct HeadphoneContext {scalar_t__ hrir_fmt; int nb_inputs; } ;
struct TYPE_9__ {TYPE_2__** outputs; TYPE_1__** inputs; struct HeadphoneContext* priv; } ;
struct TYPE_8__ {int in_channel_layouts; } ;
struct TYPE_7__ {int out_channel_layouts; } ;
typedef int AVFilterFormats ;
typedef TYPE_3__ AVFilterContext ;
typedef int AVFilterChannelLayouts ;


 int AVERROR (int ) ;
 int AV_CH_LAYOUT_STEREO ;
 int AV_SAMPLE_FMT_FLT ;
 int ENOMEM ;
 scalar_t__ HRIR_MULTI ;
 int ff_add_channel_layout (int **,int ) ;
 int ff_add_format (int **,int ) ;
 int * ff_all_channel_counts () ;
 int * ff_all_channel_layouts () ;
 int * ff_all_samplerates () ;
 int ff_channel_layouts_ref (int *,int *) ;
 int ff_set_common_formats (TYPE_3__*,int *) ;
 int ff_set_common_samplerates (TYPE_3__*,int *) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    struct HeadphoneContext *s = ctx->priv;
    AVFilterFormats *formats = ((void*)0);
    AVFilterChannelLayouts *layouts = ((void*)0);
    AVFilterChannelLayouts *stereo_layout = ((void*)0);
    AVFilterChannelLayouts *hrir_layouts = ((void*)0);
    int ret, i;

    ret = ff_add_format(&formats, AV_SAMPLE_FMT_FLT);
    if (ret)
        return ret;
    ret = ff_set_common_formats(ctx, formats);
    if (ret)
        return ret;

    layouts = ff_all_channel_layouts();
    if (!layouts)
        return AVERROR(ENOMEM);

    ret = ff_channel_layouts_ref(layouts, &ctx->inputs[0]->out_channel_layouts);
    if (ret)
        return ret;

    ret = ff_add_channel_layout(&stereo_layout, AV_CH_LAYOUT_STEREO);
    if (ret)
        return ret;

    if (s->hrir_fmt == HRIR_MULTI) {
        hrir_layouts = ff_all_channel_counts();
        if (!hrir_layouts)
            return AVERROR(ENOMEM);
        ret = ff_channel_layouts_ref(hrir_layouts, &ctx->inputs[1]->out_channel_layouts);
        if (ret)
            return ret;
    } else {
        for (i = 1; i < s->nb_inputs; i++) {
            ret = ff_channel_layouts_ref(stereo_layout, &ctx->inputs[i]->out_channel_layouts);
            if (ret)
                return ret;
        }
    }

    ret = ff_channel_layouts_ref(stereo_layout, &ctx->outputs[0]->in_channel_layouts);
    if (ret)
        return ret;

    formats = ff_all_samplerates();
    if (!formats)
        return AVERROR(ENOMEM);
    return ff_set_common_samplerates(ctx, formats);
}
