
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct SOFAlizerContext {int sample_rate; } ;
typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_9__ {TYPE_2__** outputs; TYPE_1__** inputs; struct SOFAlizerContext* priv; } ;
struct TYPE_8__ {int in_channel_layouts; } ;
struct TYPE_7__ {int out_channel_layouts; } ;
typedef int AVFilterFormats ;
typedef TYPE_3__ AVFilterContext ;
typedef int AVFilterChannelLayouts ;


 int AVERROR (int ) ;
 int AV_CH_LAYOUT_STEREO ;



 int ENOMEM ;
 int ff_add_channel_layout (int **,int ) ;
 int * ff_all_channel_layouts () ;
 int ff_channel_layouts_ref (int *,int *) ;
 int * ff_make_format_list (int const*) ;
 int ff_set_common_formats (TYPE_3__*,int *) ;
 int ff_set_common_samplerates (TYPE_3__*,int *) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    struct SOFAlizerContext *s = ctx->priv;
    AVFilterFormats *formats = ((void*)0);
    AVFilterChannelLayouts *layouts = ((void*)0);
    int ret, sample_rates[] = { 48000, -1 };
    static const enum AVSampleFormat sample_fmts[] = {
        130, 129,
        128
    };

    formats = ff_make_format_list(sample_fmts);
    if (!formats)
        return AVERROR(ENOMEM);
    ret = ff_set_common_formats(ctx, formats);
    if (ret)
        return ret;

    layouts = ff_all_channel_layouts();
    if (!layouts)
        return AVERROR(ENOMEM);

    ret = ff_channel_layouts_ref(layouts, &ctx->inputs[0]->out_channel_layouts);
    if (ret)
        return ret;

    layouts = ((void*)0);
    ret = ff_add_channel_layout(&layouts, AV_CH_LAYOUT_STEREO);
    if (ret)
        return ret;

    ret = ff_channel_layouts_ref(layouts, &ctx->outputs[0]->in_channel_layouts);
    if (ret)
        return ret;

    sample_rates[0] = s->sample_rate;
    formats = ff_make_format_list(sample_rates);
    if (!formats)
        return AVERROR(ENOMEM);
    return ff_set_common_samplerates(ctx, formats);
}
