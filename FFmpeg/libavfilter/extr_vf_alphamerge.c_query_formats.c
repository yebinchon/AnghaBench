
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_12__ {TYPE_2__** outputs; TYPE_1__** inputs; } ;
struct TYPE_11__ {struct TYPE_11__* formats; } ;
struct TYPE_10__ {int in_formats; } ;
struct TYPE_9__ {int out_formats; } ;
typedef TYPE_3__ AVFilterFormats ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_freep (TYPE_3__**) ;
 int ff_formats_ref (TYPE_3__*,int *) ;
 TYPE_3__* ff_make_format_list (int const*) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    static const enum AVPixelFormat main_fmts[] = {
        128, 129, 130,
        134,
        131, 135, 136, 137,
        132
    };
    static const enum AVPixelFormat alpha_fmts[] = { 133, 132 };
    AVFilterFormats *main_formats = ((void*)0), *alpha_formats = ((void*)0);
    int ret;

    if (!(main_formats = ff_make_format_list(main_fmts)) ||
        !(alpha_formats = ff_make_format_list(alpha_fmts))) {
            ret = AVERROR(ENOMEM);
            goto fail;
        }
    if ((ret = ff_formats_ref(main_formats , &ctx->inputs[0]->out_formats)) < 0 ||
        (ret = ff_formats_ref(alpha_formats, &ctx->inputs[1]->out_formats)) < 0 ||
        (ret = ff_formats_ref(main_formats , &ctx->outputs[0]->in_formats)) < 0)
            goto fail;
    return 0;
fail:
    if (main_formats)
        av_freep(&main_formats->formats);
    av_freep(&main_formats);
    if (alpha_formats)
        av_freep(&alpha_formats->formats);
    av_freep(&alpha_formats);
    return ret;
}
