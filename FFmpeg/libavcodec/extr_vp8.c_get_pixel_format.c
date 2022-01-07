
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_3__ {int avctx; } ;
typedef TYPE_1__ VP8Context ;


 int AV_PIX_FMT_CUDA ;
 int AV_PIX_FMT_NONE ;
 int AV_PIX_FMT_VAAPI ;
 int AV_PIX_FMT_YUV420P ;
 int ff_get_format (int ,int*) ;

__attribute__((used)) static enum AVPixelFormat get_pixel_format(VP8Context *s)
{
    enum AVPixelFormat pix_fmts[] = {






        AV_PIX_FMT_YUV420P,
        AV_PIX_FMT_NONE,
    };

    return ff_get_format(s->avctx, pix_fmts);
}
