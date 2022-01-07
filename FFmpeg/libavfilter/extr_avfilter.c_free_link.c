
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {size_t srcpad; size_t dstpad; int out_channel_layouts; int in_channel_layouts; int out_samplerates; int in_samplerates; int out_formats; int in_formats; int hw_frames_ctx; TYPE_2__* dst; TYPE_1__* src; } ;
struct TYPE_7__ {size_t input_pads; int ** inputs; } ;
struct TYPE_6__ {size_t output_pads; int ** outputs; } ;
typedef TYPE_3__ AVFilterLink ;


 int av_buffer_unref (int *) ;
 int avfilter_link_free (TYPE_3__**) ;
 int ff_channel_layouts_unref (int *) ;
 int ff_formats_unref (int *) ;

__attribute__((used)) static void free_link(AVFilterLink *link)
{
    if (!link)
        return;

    if (link->src)
        link->src->outputs[link->srcpad - link->src->output_pads] = ((void*)0);
    if (link->dst)
        link->dst->inputs[link->dstpad - link->dst->input_pads] = ((void*)0);

    av_buffer_unref(&link->hw_frames_ctx);

    ff_formats_unref(&link->in_formats);
    ff_formats_unref(&link->out_formats);
    ff_formats_unref(&link->in_samplerates);
    ff_formats_unref(&link->out_samplerates);
    ff_channel_layouts_unref(&link->in_channel_layouts);
    ff_channel_layouts_unref(&link->out_channel_layouts);
    avfilter_link_free(&link);
}
