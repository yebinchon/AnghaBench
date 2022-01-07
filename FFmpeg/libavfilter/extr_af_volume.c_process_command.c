
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ eval_mode; int volume_pexpr; } ;
typedef TYPE_1__ VolumeContext ;
struct TYPE_7__ {TYPE_1__* priv; } ;
typedef TYPE_2__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOSYS ;
 scalar_t__ EVAL_MODE_ONCE ;
 int set_expr (int *,char const*,TYPE_2__*) ;
 int set_volume (TYPE_2__*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int process_command(AVFilterContext *ctx, const char *cmd, const char *args,
                           char *res, int res_len, int flags)
{
    VolumeContext *vol = ctx->priv;
    int ret = AVERROR(ENOSYS);

    if (!strcmp(cmd, "volume")) {
        if ((ret = set_expr(&vol->volume_pexpr, args, ctx)) < 0)
            return ret;
        if (vol->eval_mode == EVAL_MODE_ONCE)
            set_volume(ctx);
    }

    return ret;
}
