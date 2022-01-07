
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ AVPixFmtDescriptor ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_PIX_FMT_FLAG_PAL ;
 int EINVAL ;
 int ENOMEM ;
 int FFALIGN (int,int) ;
 int FF_PSEUDOPAL ;
 int av_free (int *) ;
 int av_image_check_size (int,int,int ,int *) ;
 int av_image_fill_linesizes (int*,int,int) ;
 int av_image_fill_pointers (int **,int,int,int *,int*) ;
 int av_log (int *,int ,char*) ;
 int * av_malloc (int) ;
 TYPE_1__* av_pix_fmt_desc_get (int) ;
 int avpriv_set_systematic_pal2 (int *,int) ;
 int memset (int *,int ,int) ;

int av_image_alloc(uint8_t *pointers[4], int linesizes[4],
                   int w, int h, enum AVPixelFormat pix_fmt, int align)
{
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(pix_fmt);
    int i, ret;
    uint8_t *buf;

    if (!desc)
        return AVERROR(EINVAL);

    if ((ret = av_image_check_size(w, h, 0, ((void*)0))) < 0)
        return ret;
    if ((ret = av_image_fill_linesizes(linesizes, pix_fmt, align>7 ? FFALIGN(w, 8) : w)) < 0)
        return ret;

    for (i = 0; i < 4; i++)
        linesizes[i] = FFALIGN(linesizes[i], align);

    if ((ret = av_image_fill_pointers(pointers, pix_fmt, h, ((void*)0), linesizes)) < 0)
        return ret;
    buf = av_malloc(ret + align);
    if (!buf)
        return AVERROR(ENOMEM);
    if ((ret = av_image_fill_pointers(pointers, pix_fmt, h, buf, linesizes)) < 0) {
        av_free(buf);
        return ret;
    }
    if (desc->flags & AV_PIX_FMT_FLAG_PAL || (desc->flags & FF_PSEUDOPAL && pointers[1])) {
        avpriv_set_systematic_pal2((uint32_t*)pointers[1], pix_fmt);
        if (align < 4) {
            av_log(((void*)0), AV_LOG_ERROR, "Formats with a palette require a minimum alignment of 4\n");
            return AVERROR(EINVAL);
        }
    }

    if ((desc->flags & AV_PIX_FMT_FLAG_PAL ||
         desc->flags & FF_PSEUDOPAL) && pointers[1] &&
        pointers[1] - pointers[0] > linesizes[0] * h) {

        memset(pointers[0] + linesizes[0] * h, 0,
               pointers[1] - pointers[0] - linesizes[0] * h);
    }

    return ret;
}
