
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__** outputs; TYPE_2__* priv; } ;
struct TYPE_9__ {int channels; int channel_layout; int sample_rate; int sample_fmt; int pix_fmt; } ;
struct TYPE_8__ {int type; } ;
typedef TYPE_2__ BufferSourceContext ;
typedef int AVFilterFormats ;
typedef TYPE_3__ AVFilterContext ;
typedef int AVFilterChannelLayouts ;


 int AVERROR (int ) ;


 int EINVAL ;
 int FF_COUNT2LAYOUT (int ) ;
 int ff_add_channel_layout (int **,int ) ;
 int ff_add_format (int **,int ) ;
 int ff_set_common_channel_layouts (TYPE_3__*,int *) ;
 int ff_set_common_formats (TYPE_3__*,int *) ;
 int ff_set_common_samplerates (TYPE_3__*,int *) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    BufferSourceContext *c = ctx->priv;
    AVFilterChannelLayouts *channel_layouts = ((void*)0);
    AVFilterFormats *formats = ((void*)0);
    AVFilterFormats *samplerates = ((void*)0);
    int ret;

    switch (ctx->outputs[0]->type) {
    case 128:
        if ((ret = ff_add_format (&formats, c->pix_fmt)) < 0 ||
            (ret = ff_set_common_formats (ctx , formats )) < 0)
            return ret;
        break;
    case 129:
        if ((ret = ff_add_format (&formats , c->sample_fmt )) < 0 ||
            (ret = ff_set_common_formats (ctx , formats )) < 0 ||
            (ret = ff_add_format (&samplerates, c->sample_rate)) < 0 ||
            (ret = ff_set_common_samplerates (ctx , samplerates )) < 0)
            return ret;

        if ((ret = ff_add_channel_layout(&channel_layouts,
                              c->channel_layout ? c->channel_layout :
                              FF_COUNT2LAYOUT(c->channels))) < 0)
            return ret;
        if ((ret = ff_set_common_channel_layouts(ctx, channel_layouts)) < 0)
            return ret;
        break;
    default:
        return AVERROR(EINVAL);
    }

    return 0;
}
