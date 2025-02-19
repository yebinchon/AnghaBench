
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {scalar_t__ w; scalar_t__ h; TYPE_3__* dst; } ;
struct TYPE_6__ {scalar_t__ mask_w; scalar_t__ mask_h; } ;
typedef TYPE_1__ RemovelogoContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_INFO ;
 int EINVAL ;
 int av_log (TYPE_3__*,int ,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int config_props_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    RemovelogoContext *s = ctx->priv;

    if (inlink->w != s->mask_w || inlink->h != s->mask_h) {
        av_log(ctx, AV_LOG_INFO,
               "Mask image size %dx%d does not match with the input video size %dx%d\n",
               s->mask_w, s->mask_h, inlink->w, inlink->h);
        return AVERROR(EINVAL);
    }

    return 0;
}
