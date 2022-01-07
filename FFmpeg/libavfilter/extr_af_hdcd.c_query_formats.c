
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_7__ {TYPE_1__** outputs; TYPE_1__** inputs; } ;
struct TYPE_6__ {int in_formats; int out_formats; } ;
typedef TYPE_1__ AVFilterLink ;
typedef int AVFilterFormats ;
typedef TYPE_2__ AVFilterContext ;
typedef int AVFilterChannelLayouts ;


 int AV_CH_LAYOUT_MONO ;
 int AV_CH_LAYOUT_STEREO ;





 int ff_add_channel_layout (int **,int ) ;
 int ff_formats_ref (int *,int *) ;
 int * ff_make_format_list (int const*) ;
 int ff_set_common_channel_layouts (TYPE_2__*,int *) ;
 int ff_set_common_samplerates (TYPE_2__*,int *) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    static const int sample_rates[] = {
        44100, 48000,
        88200, 96000,
        176400, 192000,
        -1
    };
    AVFilterFormats *in_formats;
    AVFilterFormats *out_formats;
    AVFilterChannelLayouts *layouts = ((void*)0);
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];

    static const enum AVSampleFormat sample_fmts_in[] = {
        131,
        130,
        129,
        128,
        132
    };
    static const enum AVSampleFormat sample_fmts_out[] = {
        129,
        132
    };
    int ret;

    ret = ff_add_channel_layout(&layouts, AV_CH_LAYOUT_MONO);
    if (ret < 0)
        return ret;
    ret = ff_add_channel_layout(&layouts, AV_CH_LAYOUT_STEREO);
    if (ret < 0)
        return ret;

    ret = ff_set_common_channel_layouts(ctx, layouts);
    if (ret < 0)
        return ret;

    in_formats = ff_make_format_list(sample_fmts_in);
    ret = ff_formats_ref(in_formats, &inlink->out_formats);
    if (ret < 0)
        return ret;

    out_formats = ff_make_format_list(sample_fmts_out);
    ret = ff_formats_ref(out_formats, &outlink->in_formats);
    if (ret < 0)
        return ret;

    return
        ff_set_common_samplerates(ctx, ff_make_format_list(sample_rates) );
}
