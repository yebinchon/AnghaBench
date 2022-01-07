
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int const uint8_t ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_4__ {int srcFormat; int dstFormat; int srcW; scalar_t__ pal_rgb; } ;
typedef TYPE_1__ SwsContext ;


 int AV_LOG_ERROR ;






 int const AV_PIX_FMT_YA8 ;
 int av_get_pix_fmt_name (int const) ;
 int av_log (TYPE_1__*,int ,char*,int ,int ) ;
 void gray8aToPacked24 (int const*,int const*,int,int const*) ;
 void gray8aToPacked32 (int const*,int const*,int,int const*) ;
 void gray8aToPacked32_1 (int const*,int const*,int,int const*) ;
 void sws_convertPalette8ToPacked24 (int const*,int const*,int,int const*) ;
 void sws_convertPalette8ToPacked32 (int const*,int const*,int,int const*) ;
 scalar_t__ usePal (int const) ;

__attribute__((used)) static int palToRgbWrapper(SwsContext *c, const uint8_t *src[], int srcStride[],
                           int srcSliceY, int srcSliceH, uint8_t *dst[],
                           int dstStride[])
{
    const enum AVPixelFormat srcFormat = c->srcFormat;
    const enum AVPixelFormat dstFormat = c->dstFormat;
    void (*conv)(const uint8_t *src, uint8_t *dst, int num_pixels,
                 const uint8_t *palette) = ((void*)0);
    int i;
    uint8_t *dstPtr = dst[0] + dstStride[0] * srcSliceY;
    const uint8_t *srcPtr = src[0];

    if (srcFormat == AV_PIX_FMT_YA8) {
        switch (dstFormat) {
        case 129 : conv = gray8aToPacked32; break;
        case 132 : conv = gray8aToPacked32; break;
        case 131: conv = gray8aToPacked32_1; break;
        case 128: conv = gray8aToPacked32_1; break;
        case 130 : conv = gray8aToPacked24; break;
        case 133 : conv = gray8aToPacked24; break;
        }
    } else if (usePal(srcFormat)) {
        switch (dstFormat) {
        case 129 : conv = sws_convertPalette8ToPacked32; break;
        case 132 : conv = sws_convertPalette8ToPacked32; break;
        case 131: conv = sws_convertPalette8ToPacked32; break;
        case 128: conv = sws_convertPalette8ToPacked32; break;
        case 130 : conv = sws_convertPalette8ToPacked24; break;
        case 133 : conv = sws_convertPalette8ToPacked24; break;
        }
    }

    if (!conv)
        av_log(c, AV_LOG_ERROR, "internal error %s -> %s converter\n",
               av_get_pix_fmt_name(srcFormat), av_get_pix_fmt_name(dstFormat));
    else {
        for (i = 0; i < srcSliceH; i++) {
            conv(srcPtr, dstPtr, c->srcW, (uint8_t *) c->pal_rgb);
            srcPtr += srcStride[0];
            dstPtr += dstStride[0];
        }
    }

    return srcSliceH;
}
