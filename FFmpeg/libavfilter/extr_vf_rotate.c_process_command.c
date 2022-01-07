
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int * angle_expr; } ;
typedef TYPE_1__ RotContext ;
typedef TYPE_2__ AVFilterContext ;
typedef int AVExpr ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int ENOSYS ;
 int av_expr_free (int *) ;
 int av_expr_parse (int **,char const*,int ,int *,int *,int *,int *,int ,TYPE_2__*) ;
 int av_log (TYPE_2__*,int ,char*,char const*) ;
 int strcmp (char const*,char*) ;
 int var_names ;

__attribute__((used)) static int process_command(AVFilterContext *ctx, const char *cmd, const char *args,
                           char *res, int res_len, int flags)
{
    RotContext *rot = ctx->priv;
    int ret;

    if (!strcmp(cmd, "angle") || !strcmp(cmd, "a")) {
        AVExpr *old = rot->angle_expr;
        ret = av_expr_parse(&rot->angle_expr, args, var_names,
                            ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0, ctx);
        if (ret < 0) {
            av_log(ctx, AV_LOG_ERROR,
                   "Error when parsing the expression '%s' for angle command\n", args);
            rot->angle_expr = old;
            return ret;
        }
        av_expr_free(old);
    } else
        ret = AVERROR(ENOSYS);

    return ret;
}
