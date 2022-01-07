
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_10__ {TYPE_2__** outputs; TYPE_1__** inputs; TYPE_3__* priv; } ;
struct TYPE_9__ {int pal8; } ;
struct TYPE_8__ {int in_formats; } ;
struct TYPE_7__ {int out_formats; } ;
typedef TYPE_3__ ELBGContext ;
typedef int AVFilterFormats ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int ff_formats_ref (int *,int *) ;
 int * ff_make_format_list (int const*) ;
 int ff_set_common_formats (TYPE_4__*,int *) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    ELBGContext *elbg = ctx->priv;
    int ret;

    static const enum AVPixelFormat pix_fmts[] = {
        134, 128, 135, 132,
        129, 133,
        131
    };
    if (!elbg->pal8) {
        AVFilterFormats *fmts_list = ff_make_format_list(pix_fmts);
        if (!fmts_list)
            return AVERROR(ENOMEM);
        return ff_set_common_formats(ctx, fmts_list);
    } else {
        static const enum AVPixelFormat pal8_fmt[] = {
            130,
            131
        };
        if ((ret = ff_formats_ref(ff_make_format_list(pix_fmts), &ctx->inputs[0]->out_formats)) < 0 ||
            (ret = ff_formats_ref(ff_make_format_list(pal8_fmt), &ctx->outputs[0]->in_formats)) < 0)
            return ret;
    }
    return 0;
}
