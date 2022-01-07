
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; scalar_t__ log2_chroma_h; scalar_t__ log2_chroma_w; } ;
typedef TYPE_1__ AVPixFmtDescriptor ;
typedef int AVFilterFormats ;
typedef int AVFilterContext ;


 int AV_PIX_FMT_FLAG_BITSTREAM ;
 int AV_PIX_FMT_FLAG_HWACCEL ;
 int AV_PIX_FMT_FLAG_PLANAR ;
 TYPE_1__* av_pix_fmt_desc_get (int) ;
 int ff_add_format (int **,int) ;
 int ff_set_common_formats (int *,int *) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    AVFilterFormats *formats = ((void*)0);
    int fmt, ret;

    for (fmt = 0; av_pix_fmt_desc_get(fmt); fmt++) {
        const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(fmt);
        if (desc->flags & AV_PIX_FMT_FLAG_BITSTREAM)
            continue;
        if (!(desc->flags & AV_PIX_FMT_FLAG_HWACCEL)) {


            if ((desc->log2_chroma_w || desc->log2_chroma_h) &&
                !(desc->flags & AV_PIX_FMT_FLAG_PLANAR))
                continue;
        }
        ret = ff_add_format(&formats, fmt);
        if (ret < 0)
            return ret;
    }

    return ff_set_common_formats(ctx, formats);
}
