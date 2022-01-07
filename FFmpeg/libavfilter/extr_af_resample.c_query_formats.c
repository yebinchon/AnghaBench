
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__** outputs; TYPE_1__** inputs; } ;
struct TYPE_4__ {int in_channel_layouts; int out_channel_layouts; int in_samplerates; int out_samplerates; int in_formats; int out_formats; } ;
typedef TYPE_1__ AVFilterLink ;
typedef int AVFilterFormats ;
typedef TYPE_2__ AVFilterContext ;
typedef int AVFilterChannelLayouts ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_AUDIO ;
 int ENOMEM ;
 int * ff_all_channel_layouts () ;
 int * ff_all_formats (int ) ;
 int * ff_all_samplerates () ;
 int ff_channel_layouts_ref (int *,int *) ;
 int ff_formats_ref (int *,int *) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    AVFilterFormats *in_formats, *out_formats, *in_samplerates, *out_samplerates;
    AVFilterChannelLayouts *in_layouts, *out_layouts;
    int ret;

    if (!(in_formats = ff_all_formats (AVMEDIA_TYPE_AUDIO)) ||
        !(out_formats = ff_all_formats (AVMEDIA_TYPE_AUDIO)) ||
        !(in_samplerates = ff_all_samplerates ( )) ||
        !(out_samplerates = ff_all_samplerates ( )) ||
        !(in_layouts = ff_all_channel_layouts ( )) ||
        !(out_layouts = ff_all_channel_layouts ( )))
        return AVERROR(ENOMEM);

    if ((ret = ff_formats_ref (in_formats, &inlink->out_formats )) < 0 ||
        (ret = ff_formats_ref (out_formats, &outlink->in_formats )) < 0 ||
        (ret = ff_formats_ref (in_samplerates, &inlink->out_samplerates )) < 0 ||
        (ret = ff_formats_ref (out_samplerates, &outlink->in_samplerates )) < 0 ||
        (ret = ff_channel_layouts_ref (in_layouts, &inlink->out_channel_layouts)) < 0 ||
        (ret = ff_channel_layouts_ref (out_layouts, &outlink->in_channel_layouts)) < 0)
        return ret;

    return 0;
}
