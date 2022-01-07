
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {scalar_t__ channels; TYPE_3__* dst; } ;
struct TYPE_6__ {scalar_t__ nb_irs; } ;
typedef TYPE_1__ HeadphoneContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_log (TYPE_3__*,int ,char*,scalar_t__) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    HeadphoneContext *s = ctx->priv;

    if (s->nb_irs < inlink->channels) {
        av_log(ctx, AV_LOG_ERROR, "Number of HRIRs must be >= %d.\n", inlink->channels);
        return AVERROR(EINVAL);
    }

    return 0;
}
