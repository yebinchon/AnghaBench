
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int priv; TYPE_1__* filter; } ;
struct TYPE_4__ {int priv_class; } ;
typedef int AVOption ;
typedef TYPE_2__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_OPT_FLAG_FILTERING_PARAM ;
 int AV_OPT_FLAG_RUNTIME_PARAM ;
 int AV_OPT_SEARCH_CHILDREN ;
 int ENOSYS ;
 int * av_opt_find2 (int ,char const*,int *,int,int ,int *) ;
 int av_opt_set (int ,char const*,char const*,int ) ;

int ff_filter_process_command(AVFilterContext *ctx, const char *cmd,
                              const char *arg, char *res, int res_len, int flags)
{
    const AVOption *o;

    if (!ctx->filter->priv_class)
        return 0;
    o = av_opt_find2(ctx->priv, cmd, ((void*)0), AV_OPT_FLAG_RUNTIME_PARAM | AV_OPT_FLAG_FILTERING_PARAM, AV_OPT_SEARCH_CHILDREN, ((void*)0));
    if (!o)
        return AVERROR(ENOSYS);
    return av_opt_set(ctx->priv, cmd, arg, 0);
}
