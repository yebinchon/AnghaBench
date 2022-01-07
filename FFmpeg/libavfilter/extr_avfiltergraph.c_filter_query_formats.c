
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
struct TYPE_15__ {int nb_inputs; int nb_outputs; TYPE_3__** outputs; TYPE_2__** inputs; int name; TYPE_1__* filter; } ;
struct TYPE_14__ {int type; int in_channel_layouts; } ;
struct TYPE_13__ {int type; int out_channel_layouts; } ;
struct TYPE_12__ {int (* query_formats ) (TYPE_4__*) ;} ;
typedef int AVFilterFormats ;
typedef TYPE_4__ AVFilterContext ;
typedef int AVFilterChannelLayouts ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_AUDIO ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_LOG_ERROR ;
 int EAGAIN ;
 int av_err2str (int) ;
 int av_log (TYPE_4__*,int ,char*,int ,int ) ;
 int * ff_all_channel_layouts () ;
 int * ff_all_formats (int) ;
 int * ff_all_samplerates () ;
 int ff_set_common_channel_layouts (TYPE_4__*,int *) ;
 int ff_set_common_formats (TYPE_4__*,int *) ;
 int ff_set_common_samplerates (TYPE_4__*,int *) ;
 int sanitize_channel_layouts (TYPE_4__*,int ) ;
 int stub1 (TYPE_4__*) ;

__attribute__((used)) static int filter_query_formats(AVFilterContext *ctx)
{
    int ret, i;
    AVFilterFormats *formats;
    AVFilterChannelLayouts *chlayouts;
    AVFilterFormats *samplerates;
    enum AVMediaType type = ctx->inputs && ctx->inputs [0] ? ctx->inputs [0]->type :
                            ctx->outputs && ctx->outputs[0] ? ctx->outputs[0]->type :
                            AVMEDIA_TYPE_VIDEO;

    if ((ret = ctx->filter->query_formats(ctx)) < 0) {
        if (ret != AVERROR(EAGAIN))
            av_log(ctx, AV_LOG_ERROR, "Query format failed for '%s': %s\n",
                   ctx->name, av_err2str(ret));
        return ret;
    }

    for (i = 0; i < ctx->nb_inputs; i++)
        sanitize_channel_layouts(ctx, ctx->inputs[i]->out_channel_layouts);
    for (i = 0; i < ctx->nb_outputs; i++)
        sanitize_channel_layouts(ctx, ctx->outputs[i]->in_channel_layouts);

    formats = ff_all_formats(type);
    if ((ret = ff_set_common_formats(ctx, formats)) < 0)
        return ret;
    if (type == AVMEDIA_TYPE_AUDIO) {
        samplerates = ff_all_samplerates();
        if ((ret = ff_set_common_samplerates(ctx, samplerates)) < 0)
            return ret;
        chlayouts = ff_all_channel_layouts();
        if ((ret = ff_set_common_channel_layouts(ctx, chlayouts)) < 0)
            return ret;
    }
    return 0;
}
