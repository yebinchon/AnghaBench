
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_7__ {int nb_inputs; TYPE_1__** outputs; TYPE_2__** inputs; } ;
struct TYPE_6__ {int out_formats; } ;
struct TYPE_5__ {int in_formats; } ;
typedef TYPE_3__ AVFilterContext ;
 int ff_formats_ref (int ,int *) ;
 int ff_make_format_list (int const*) ;

__attribute__((used)) static int overlay_qsv_query_formats(AVFilterContext *ctx)
{
    int i;
    int ret;

    static const enum AVPixelFormat main_in_fmts[] = {
        129,
        132,
        128,
        130,
        131,
        133
    };
    static const enum AVPixelFormat out_pix_fmts[] = {
        132,
        131,
        133
    };

    for (i = 0; i < ctx->nb_inputs; i++) {
        ret = ff_formats_ref(ff_make_format_list(main_in_fmts), &ctx->inputs[i]->out_formats);
        if (ret < 0)
            return ret;
    }

    ret = ff_formats_ref(ff_make_format_list(out_pix_fmts), &ctx->outputs[0]->in_formats);
    if (ret < 0)
        return ret;

    return 0;
}
