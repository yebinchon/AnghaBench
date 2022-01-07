
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; int nb_components; TYPE_1__* comp; } ;
struct TYPE_4__ {int depth; } ;
typedef TYPE_2__ AVPixFmtDescriptor ;
typedef int AVFilterFormats ;
typedef int AVFilterContext ;


 int AV_PIX_FMT_FLAG_BE ;
 int AV_PIX_FMT_FLAG_BITSTREAM ;
 int AV_PIX_FMT_FLAG_HWACCEL ;
 int AV_PIX_FMT_FLAG_PAL ;
 int AV_PIX_FMT_FLAG_PLANAR ;
 int AV_PIX_FMT_FLAG_RGB ;
 int HAVE_BIGENDIAN ;
 TYPE_2__* av_pix_fmt_desc_get (int) ;
 int ff_add_format (int **,int) ;
 int ff_set_common_formats (int *,int *) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    AVFilterFormats *fmts_list = ((void*)0);
    int format, ret;

    for (format = 0; av_pix_fmt_desc_get(format); format++) {
        const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(format);
        if (!(desc->flags & (AV_PIX_FMT_FLAG_RGB | AV_PIX_FMT_FLAG_HWACCEL | AV_PIX_FMT_FLAG_BITSTREAM | AV_PIX_FMT_FLAG_PAL)) &&
            (desc->flags & AV_PIX_FMT_FLAG_PLANAR || desc->nb_components == 1) &&
            (!(desc->flags & AV_PIX_FMT_FLAG_BE) == !HAVE_BIGENDIAN || desc->comp[0].depth == 8) &&
            (desc->comp[0].depth == 8 || desc->comp[0].depth == 10) &&
            (ret = ff_add_format(&fmts_list, format)) < 0)
            return ret;
    }

    return ff_set_common_formats(ctx, fmts_list);
}
