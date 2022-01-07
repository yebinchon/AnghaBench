
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {scalar_t__ eval_mode; int y; int * var_values; int x; int y_pexpr; int x_pexpr; } ;
typedef TYPE_1__ OverlayContext ;
typedef TYPE_2__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_VERBOSE ;
 int ENOSYS ;
 scalar_t__ EVAL_MODE_INIT ;
 size_t VAR_X ;
 size_t VAR_Y ;
 int av_log (TYPE_2__*,int ,char*,int ,int ,int ,int ) ;
 int eval_expr (TYPE_2__*) ;
 int set_expr (int *,char const*,char const*,TYPE_2__*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int process_command(AVFilterContext *ctx, const char *cmd, const char *args,
                           char *res, int res_len, int flags)
{
    OverlayContext *s = ctx->priv;
    int ret;

    if (!strcmp(cmd, "x"))
        ret = set_expr(&s->x_pexpr, args, cmd, ctx);
    else if (!strcmp(cmd, "y"))
        ret = set_expr(&s->y_pexpr, args, cmd, ctx);
    else
        ret = AVERROR(ENOSYS);

    if (ret < 0)
        return ret;

    if (s->eval_mode == EVAL_MODE_INIT) {
        eval_expr(ctx);
        av_log(ctx, AV_LOG_VERBOSE, "x:%f xi:%d y:%f yi:%d\n",
               s->var_values[VAR_X], s->x,
               s->var_values[VAR_Y], s->y);
    }
    return ret;
}
