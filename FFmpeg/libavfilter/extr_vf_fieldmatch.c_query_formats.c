
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_10__ {TYPE_2__** inputs; TYPE_1__** outputs; TYPE_3__* priv; } ;
struct TYPE_9__ {int ppsrc; } ;
struct TYPE_8__ {int out_formats; } ;
struct TYPE_7__ {int in_formats; } ;
typedef TYPE_3__ FieldMatchContext ;
typedef int AVFilterFormats ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 size_t INPUT_CLEANSRC ;
 size_t INPUT_MAIN ;
 int ff_formats_ref (int *,int *) ;
 int * ff_make_format_list (int const*) ;
 int ff_set_common_formats (TYPE_4__*,int *) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    FieldMatchContext *fm = ctx->priv;

    static const enum AVPixelFormat pix_fmts[] = {
        138, 147, 153,
        154, 155,
        156
    };
    static const enum AVPixelFormat unproc_pix_fmts[] = {
        155, 154,
        153, 147,
        141, 138,
        131, 130,
        129, 128,
        132,
        148, 142, 133,
        152, 146, 137,
        140,
        136, 145, 151,
        139,
        135, 144, 150,
        149, 143, 134,
        156
    };
    int ret;

    AVFilterFormats *fmts_list = ff_make_format_list(pix_fmts);
    if (!fmts_list)
        return AVERROR(ENOMEM);
    if (!fm->ppsrc) {
        return ff_set_common_formats(ctx, fmts_list);
    }

    if ((ret = ff_formats_ref(fmts_list, &ctx->inputs[INPUT_MAIN]->out_formats)) < 0)
        return ret;
    fmts_list = ff_make_format_list(unproc_pix_fmts);
    if (!fmts_list)
        return AVERROR(ENOMEM);
    if ((ret = ff_formats_ref(fmts_list, &ctx->outputs[0]->in_formats)) < 0)
        return ret;
    if ((ret = ff_formats_ref(fmts_list, &ctx->inputs[INPUT_CLEANSRC]->out_formats)) < 0)
        return ret;
    return 0;
}
