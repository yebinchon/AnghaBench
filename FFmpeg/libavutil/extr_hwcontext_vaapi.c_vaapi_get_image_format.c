
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
typedef int VAImageFormat ;
struct TYPE_8__ {int nb_formats; TYPE_2__* formats; } ;
typedef TYPE_3__ VAAPIDeviceContext ;
struct TYPE_9__ {TYPE_1__* internal; } ;
struct TYPE_7__ {int pix_fmt; int image_format; } ;
struct TYPE_6__ {TYPE_3__* priv; } ;
typedef TYPE_4__ AVHWDeviceContext ;


 int AVERROR (int ) ;
 int EINVAL ;

__attribute__((used)) static int vaapi_get_image_format(AVHWDeviceContext *hwdev,
                                  enum AVPixelFormat pix_fmt,
                                  VAImageFormat **image_format)
{
    VAAPIDeviceContext *ctx = hwdev->internal->priv;
    int i;

    for (i = 0; i < ctx->nb_formats; i++) {
        if (ctx->formats[i].pix_fmt == pix_fmt) {
            if (image_format)
                *image_format = &ctx->formats[i].image_format;
            return 0;
        }
    }
    return AVERROR(EINVAL);
}
