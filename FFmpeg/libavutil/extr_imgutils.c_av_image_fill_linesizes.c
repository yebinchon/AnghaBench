
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int linesizes ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ AVPixFmtDescriptor ;


 int AVERROR (int ) ;
 int AV_PIX_FMT_FLAG_HWACCEL ;
 int EINVAL ;
 int av_image_fill_max_pixsteps (int*,int*,TYPE_1__ const*) ;
 TYPE_1__* av_pix_fmt_desc_get (int) ;
 int image_get_linesize (int,int,int,int,TYPE_1__ const*) ;
 int memset (int*,int ,int) ;

int av_image_fill_linesizes(int linesizes[4], enum AVPixelFormat pix_fmt, int width)
{
    int i, ret;
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(pix_fmt);
    int max_step [4];
    int max_step_comp[4];

    memset(linesizes, 0, 4*sizeof(linesizes[0]));

    if (!desc || desc->flags & AV_PIX_FMT_FLAG_HWACCEL)
        return AVERROR(EINVAL);

    av_image_fill_max_pixsteps(max_step, max_step_comp, desc);
    for (i = 0; i < 4; i++) {
        if ((ret = image_get_linesize(width, i, max_step[i], max_step_comp[i], desc)) < 0)
            return ret;
        linesizes[i] = ret;
    }

    return 0;
}
