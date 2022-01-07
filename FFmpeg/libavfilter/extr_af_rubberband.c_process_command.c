
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int tempo; int pitch; int rbs; } ;
typedef TYPE_1__ RubberBandContext ;
typedef TYPE_2__ AVFilterContext ;


 int ff_filter_process_command (TYPE_2__*,char const*,char const*,char*,int,int) ;
 int rubberband_set_pitch_scale (int ,int ) ;
 int rubberband_set_time_ratio (int ,int) ;

__attribute__((used)) static int process_command(AVFilterContext *ctx, const char *cmd, const char *args,
                           char *res, int res_len, int flags)
{
    RubberBandContext *s = ctx->priv;
    int ret;

    ret = ff_filter_process_command(ctx, cmd, args, res, res_len, flags);
    if (ret < 0)
        return ret;

    rubberband_set_time_ratio(s->rbs, 1. / s->tempo);
    rubberband_set_pitch_scale(s->rbs, s->pitch);

    return 0;
}
