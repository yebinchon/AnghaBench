
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;




 int AV_PIX_FMT_ABGR ;
 int AV_PIX_FMT_ARGB ;

 int AV_PIX_FMT_BGRA ;

 int AV_PIX_FMT_RGBA ;

__attribute__((used)) static int handle_0alpha(enum AVPixelFormat *format)
{
    switch (*format) {
    case 131 : *format = AV_PIX_FMT_ABGR ; return 1;
    case 129 : *format = AV_PIX_FMT_BGRA ; return 4;
    case 130 : *format = AV_PIX_FMT_ARGB ; return 1;
    case 128 : *format = AV_PIX_FMT_RGBA ; return 4;
    default: return 0;
    }
}
