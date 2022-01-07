
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
    static const enum AVPixelFormat in_fmts[] = {129, 130};
    static const enum AVPixelFormat out_fmts[] = {128, 130};
    int ret;
    AVFilterFormats *in = ff_make_format_list(in_fmts);
    AVFilterFormats *out = ff_make_format_list(out_fmts);
    if (!in || !out) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }

    if ((ret = ff_formats_ref(in , &ctx->inputs[0]->out_formats)) < 0 ||
        (ret = ff_formats_ref(out, &ctx->outputs[0]->in_formats)) < 0)
        goto fail;
    return 0;
fail:
    if (in)
        av_freep(&in->formats);
    av_freep(&in);
    if (out)
        av_freep(&out->formats);
    av_freep(&out);
    return ret;
}
