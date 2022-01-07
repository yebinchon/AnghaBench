
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int log2_count; } ;
typedef TYPE_1__ SPPContext ;
typedef TYPE_2__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOSYS ;
 int MAX_LEVEL ;
 int av_clip (int ,int ,int ) ;
 int strcmp (char const*,char*) ;
 int strtol (char const*,int *,int) ;

__attribute__((used)) static int process_command(AVFilterContext *ctx, const char *cmd, const char *args,
                           char *res, int res_len, int flags)
{
    SPPContext *s = ctx->priv;

    if (!strcmp(cmd, "level")) {
        if (!strcmp(args, "max"))
            s->log2_count = MAX_LEVEL;
        else
            s->log2_count = av_clip(strtol(args, ((void*)0), 10), 0, MAX_LEVEL);
        return 0;
    }
    return AVERROR(ENOSYS);
}
