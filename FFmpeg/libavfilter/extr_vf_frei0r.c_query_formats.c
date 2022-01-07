
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_8__ {TYPE_2__* priv; } ;
struct TYPE_6__ {scalar_t__ color_model; } ;
struct TYPE_7__ {TYPE_1__ plugin_info; } ;
typedef TYPE_2__ Frei0rContext ;
typedef int AVFilterFormats ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;




 int const AV_PIX_FMT_RGBA ;
 int ENOMEM ;
 scalar_t__ F0R_COLOR_MODEL_BGRA8888 ;
 scalar_t__ F0R_COLOR_MODEL_RGBA8888 ;
 int ff_add_format (int **,int const) ;
 int * ff_make_format_list (int const*) ;
 int ff_set_common_formats (TYPE_3__*,int *) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    Frei0rContext *s = ctx->priv;
    AVFilterFormats *formats = ((void*)0);
    int ret;

    if (s->plugin_info.color_model == F0R_COLOR_MODEL_BGRA8888) {
        if ((ret = ff_add_format(&formats, 129)) < 0)
            return ret;
    } else if (s->plugin_info.color_model == F0R_COLOR_MODEL_RGBA8888) {
        if ((ret = ff_add_format(&formats, AV_PIX_FMT_RGBA)) < 0)
            return ret;
    } else {
        static const enum AVPixelFormat pix_fmts[] = {
            129, 130, 131, 130, 128
        };
        formats = ff_make_format_list(pix_fmts);
    }

    if (!formats)
        return AVERROR(ENOMEM);

    return ff_set_common_formats(ctx, formats);
}
