
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int mode_id; } ;
typedef TYPE_1__ PPFilterContext ;
typedef TYPE_2__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOSYS ;
 int PP_QUALITY_MAX ;
 int av_clip (int ,int ,int ) ;
 int strcmp (char const*,char*) ;
 int strtol (char const*,int *,int) ;

__attribute__((used)) static int pp_process_command(AVFilterContext *ctx, const char *cmd, const char *args,
                              char *res, int res_len, int flags)
{
    PPFilterContext *pp = ctx->priv;

    if (!strcmp(cmd, "quality")) {
        pp->mode_id = av_clip(strtol(args, ((void*)0), 10), 0, PP_QUALITY_MAX);
        return 0;
    }
    return AVERROR(ENOSYS);
}
