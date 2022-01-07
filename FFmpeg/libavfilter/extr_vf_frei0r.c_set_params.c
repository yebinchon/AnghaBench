
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int f0r_param_info_t ;
struct TYPE_8__ {TYPE_2__* priv; } ;
struct TYPE_6__ {int num_params; } ;
struct TYPE_7__ {int (* get_param_info ) (int *,int) ;TYPE_1__ plugin_info; } ;
typedef TYPE_2__ Frei0rContext ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_free (char*) ;
 char* av_get_token (char const**,char*) ;
 int set_param (TYPE_3__*,int ,int,char*) ;
 int stub1 (int *,int) ;

__attribute__((used)) static int set_params(AVFilterContext *ctx, const char *params)
{
    Frei0rContext *s = ctx->priv;
    int i;

    if (!params)
        return 0;

    for (i = 0; i < s->plugin_info.num_params; i++) {
        f0r_param_info_t info;
        char *param;
        int ret;

        s->get_param_info(&info, i);

        if (*params) {
            if (!(param = av_get_token(&params, "|")))
                return AVERROR(ENOMEM);
            if (*params)
                params++;
            ret = set_param(ctx, info, i, param);
            av_free(param);
            if (ret < 0)
                return ret;
        }
    }

    return 0;
}
