
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int fmt; } ;
typedef TYPE_1__ DnnProcessingContext ;
typedef int AVFilterFormats ;
typedef TYPE_2__ AVFilterContext ;


 int AV_PIX_FMT_NONE ;
 int * ff_make_format_list (int*) ;
 int ff_set_common_formats (TYPE_2__*,int *) ;

__attribute__((used)) static int query_formats(AVFilterContext *context)
{
    AVFilterFormats *formats;
    DnnProcessingContext *ctx = context->priv;
    enum AVPixelFormat pixel_fmts[2];
    pixel_fmts[0] = ctx->fmt;
    pixel_fmts[1] = AV_PIX_FMT_NONE;

    formats = ff_make_format_list(pixel_fmts);
    return ff_set_common_formats(context, formats);
}
