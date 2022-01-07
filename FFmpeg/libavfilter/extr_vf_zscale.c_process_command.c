
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int w; int h; } ;
typedef TYPE_1__ ZScaleContext ;
struct TYPE_6__ {int ** outputs; TYPE_1__* priv; } ;
typedef int AVFilterLink ;
typedef TYPE_2__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOSYS ;
 int av_opt_set (TYPE_1__*,char const*,char const*,int ) ;
 int config_props (int *) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int process_command(AVFilterContext *ctx, const char *cmd, const char *args,
                           char *res, int res_len, int flags)
{
    ZScaleContext *s = ctx->priv;
    int ret;

    if ( !strcmp(cmd, "width") || !strcmp(cmd, "w")
        || !strcmp(cmd, "height") || !strcmp(cmd, "h")) {

        int old_w = s->w;
        int old_h = s->h;
        AVFilterLink *outlink = ctx->outputs[0];

        av_opt_set(s, cmd, args, 0);
        if ((ret = config_props(outlink)) < 0) {
            s->w = old_w;
            s->h = old_h;
        }
    } else
        ret = AVERROR(ENOSYS);

    return ret;
}
