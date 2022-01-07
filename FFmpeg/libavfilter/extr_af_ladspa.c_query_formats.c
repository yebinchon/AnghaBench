
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_10__ {TYPE_2__** inputs; TYPE_2__** outputs; TYPE_1__* priv; } ;
struct TYPE_9__ {int in_channel_layouts; int out_channel_layouts; } ;
struct TYPE_8__ {int nb_inputs; int sample_rate; int nb_outputs; } ;
typedef TYPE_1__ LADSPAContext ;
typedef TYPE_2__ AVFilterLink ;
typedef int AVFilterFormats ;
typedef TYPE_3__ AVFilterContext ;
typedef int AVFilterChannelLayouts ;


 int AVERROR (int ) ;
 int AV_CH_LAYOUT_STEREO ;


 int ENOMEM ;
 int FF_COUNT2LAYOUT (int) ;
 int ff_add_channel_layout (int **,int ) ;
 int * ff_all_channel_counts () ;
 int * ff_all_samplerates () ;
 int ff_channel_layouts_ref (int *,int *) ;
 int * ff_make_format_list (int const*) ;
 int ff_set_common_channel_layouts (TYPE_3__*,int *) ;
 int ff_set_common_formats (TYPE_3__*,int *) ;
 int ff_set_common_samplerates (TYPE_3__*,int *) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    LADSPAContext *s = ctx->priv;
    AVFilterFormats *formats;
    AVFilterChannelLayouts *layouts;
    static const enum AVSampleFormat sample_fmts[] = {
        129, 128 };
    int ret;

    formats = ff_make_format_list(sample_fmts);
    if (!formats)
        return AVERROR(ENOMEM);
    ret = ff_set_common_formats(ctx, formats);
    if (ret < 0)
        return ret;

    if (s->nb_inputs) {
        formats = ff_all_samplerates();
        if (!formats)
            return AVERROR(ENOMEM);

        ret = ff_set_common_samplerates(ctx, formats);
        if (ret < 0)
            return ret;
    } else {
        int sample_rates[] = { s->sample_rate, -1 };

        ret = ff_set_common_samplerates(ctx, ff_make_format_list(sample_rates));
        if (ret < 0)
            return ret;
    }

    if (s->nb_inputs == 1 && s->nb_outputs == 1) {

        layouts = ff_all_channel_counts();
        if (!layouts)
            return AVERROR(ENOMEM);

        ret = ff_set_common_channel_layouts(ctx, layouts);
        if (ret < 0)
            return ret;
    } else if (s->nb_inputs == 2 && s->nb_outputs == 2) {
        layouts = ((void*)0);
        ret = ff_add_channel_layout(&layouts, AV_CH_LAYOUT_STEREO);
        if (ret < 0)
            return ret;
        ret = ff_set_common_channel_layouts(ctx, layouts);
        if (ret < 0)
            return ret;
    } else {
        AVFilterLink *outlink = ctx->outputs[0];

        if (s->nb_inputs >= 1) {
            AVFilterLink *inlink = ctx->inputs[0];
            uint64_t inlayout = FF_COUNT2LAYOUT(s->nb_inputs);

            layouts = ((void*)0);
            ret = ff_add_channel_layout(&layouts, inlayout);
            if (ret < 0)
                return ret;
            ret = ff_channel_layouts_ref(layouts, &inlink->out_channel_layouts);
            if (ret < 0)
                return ret;

            if (!s->nb_outputs) {
                ret = ff_channel_layouts_ref(layouts, &outlink->in_channel_layouts);
                if (ret < 0)
                    return ret;
            }
        }

        if (s->nb_outputs >= 1) {
            uint64_t outlayout = FF_COUNT2LAYOUT(s->nb_outputs);

            layouts = ((void*)0);
            ret = ff_add_channel_layout(&layouts, outlayout);
            if (ret < 0)
                return ret;
            ret = ff_channel_layouts_ref(layouts, &outlink->in_channel_layouts);
            if (ret < 0)
                return ret;
        }
    }

    return 0;
}
