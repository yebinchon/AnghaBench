
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;



 int AV_PIX_FMT_RGBA ;



 int AV_PIX_FMT_YUVA444P ;

__attribute__((used)) static enum AVPixelFormat convert_axis_pixel_format(enum AVPixelFormat format)
{
    switch (format) {
        case 131: format = AV_PIX_FMT_RGBA; break;
        case 128:
        case 129:
        case 130: format = AV_PIX_FMT_YUVA444P; break;
    }
    return format;
}
