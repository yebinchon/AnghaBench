
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
struct TYPE_9__ {int const user_format; } ;
struct TYPE_8__ {int in_formats; } ;
struct TYPE_7__ {int out_formats; } ;
typedef TYPE_3__ ColorSpaceContext ;
typedef int AVFilterFormats ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int ff_add_format (int **,int const) ;
 int ff_formats_ref (int *,int *) ;
 int * ff_make_format_list (int const*) ;
 int ff_set_common_formats (TYPE_4__*,int *) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    static const enum AVPixelFormat pix_fmts[] = {
        139, 136, 133,
        138, 135, 132,
        137, 134, 131,
        130, 129, 128,
        140
    };
    int res;
    ColorSpaceContext *s = ctx->priv;
    AVFilterFormats *formats = ff_make_format_list(pix_fmts);

    if (!formats)
        return AVERROR(ENOMEM);
    if (s->user_format == 140)
        return ff_set_common_formats(ctx, formats);
    res = ff_formats_ref(formats, &ctx->inputs[0]->out_formats);
    if (res < 0)
        return res;
    formats = ((void*)0);
    res = ff_add_format(&formats, s->user_format);
    if (res < 0)
        return res;

    return ff_formats_ref(formats, &ctx->outputs[0]->in_formats);
}
