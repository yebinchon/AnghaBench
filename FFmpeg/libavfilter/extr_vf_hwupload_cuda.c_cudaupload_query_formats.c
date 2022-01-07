
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_7__ {TYPE_1__** outputs; TYPE_2__** inputs; } ;
struct TYPE_6__ {int out_formats; } ;
struct TYPE_5__ {int in_formats; } ;
typedef int AVFilterFormats ;
typedef TYPE_3__ AVFilterContext ;
 int ff_formats_ref (int *,int *) ;
 int * ff_make_format_list (int const*) ;

__attribute__((used)) static int cudaupload_query_formats(AVFilterContext *ctx)
{
    int ret;

    static const enum AVPixelFormat input_pix_fmts[] = {
        133, 130, 129,
        132, 131, 128,
        136, 137,
        134,
    };
    static const enum AVPixelFormat output_pix_fmts[] = {
        135, 134,
    };
    AVFilterFormats *in_fmts = ff_make_format_list(input_pix_fmts);
    AVFilterFormats *out_fmts;

    ret = ff_formats_ref(in_fmts, &ctx->inputs[0]->out_formats);
    if (ret < 0)
        return ret;

    out_fmts = ff_make_format_list(output_pix_fmts);

    ret = ff_formats_ref(out_fmts, &ctx->outputs[0]->in_formats);
    if (ret < 0)
        return ret;

    return 0;
}
