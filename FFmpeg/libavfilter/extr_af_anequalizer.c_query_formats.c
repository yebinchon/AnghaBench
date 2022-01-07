
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_7__ {TYPE_2__** outputs; TYPE_1__* priv; TYPE_2__** inputs; } ;
struct TYPE_6__ {int in_samplerates; int out_samplerates; int in_channel_layouts; int out_channel_layouts; int in_formats; int out_formats; } ;
struct TYPE_5__ {scalar_t__ draw_curves; } ;
typedef TYPE_1__ AudioNEqualizerContext ;
typedef TYPE_2__ AVFilterLink ;
typedef int AVFilterFormats ;
typedef TYPE_3__ AVFilterContext ;
typedef int AVFilterChannelLayouts ;






 int * ff_all_channel_counts () ;
 int * ff_all_samplerates () ;
 int ff_channel_layouts_ref (int *,int *) ;
 int ff_formats_ref (int *,int *) ;
 int * ff_make_format_list (int const*) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    AudioNEqualizerContext *s = ctx->priv;
    AVFilterFormats *formats;
    AVFilterChannelLayouts *layouts;
    static const enum AVPixelFormat pix_fmts[] = { 130, 131 };
    static const enum AVSampleFormat sample_fmts[] = {
        129,
        128
    };
    int ret;

    if (s->draw_curves) {
        AVFilterLink *videolink = ctx->outputs[1];
        formats = ff_make_format_list(pix_fmts);
        if ((ret = ff_formats_ref(formats, &videolink->in_formats)) < 0)
            return ret;
    }

    formats = ff_make_format_list(sample_fmts);
    if ((ret = ff_formats_ref(formats, &inlink->out_formats)) < 0 ||
        (ret = ff_formats_ref(formats, &outlink->in_formats)) < 0)
        return ret;

    layouts = ff_all_channel_counts();
    if ((ret = ff_channel_layouts_ref(layouts, &inlink->out_channel_layouts)) < 0 ||
        (ret = ff_channel_layouts_ref(layouts, &outlink->in_channel_layouts)) < 0)
        return ret;

    formats = ff_all_samplerates();
    if ((ret = ff_formats_ref(formats, &inlink->out_samplerates)) < 0 ||
        (ret = ff_formats_ref(formats, &outlink->in_samplerates)) < 0)
        return ret;

    return 0;
}
