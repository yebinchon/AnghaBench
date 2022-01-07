
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_7__ {TYPE_2__** outputs; TYPE_1__** inputs; } ;
struct TYPE_6__ {int in_formats; } ;
struct TYPE_5__ {int out_formats; } ;
typedef TYPE_3__ AVFilterContext ;




 int ff_formats_ref (int ,int *) ;
 int ff_make_format_list (int const*) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    static const enum AVPixelFormat in_fmts[] = {128, 129};
    static const enum AVPixelFormat out_fmts[] = {128, 129};
    int ret;

    if ((ret = ff_formats_ref(ff_make_format_list(in_fmts) , &ctx->inputs[0]->out_formats)) < 0)
        return ret;
    if ((ret = ff_formats_ref(ff_make_format_list(out_fmts), &ctx->outputs[0]->in_formats)) < 0)
        return ret;
    return 0;
}
