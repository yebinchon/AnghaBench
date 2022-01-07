
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;


 int AV_PIX_FMT_RGB48BE ;
 int AV_PIX_FMT_RGB48LE ;



__attribute__((used)) static int handle_xyz(enum AVPixelFormat *format)
{
    switch (*format) {
    case 129 : *format = AV_PIX_FMT_RGB48BE; return 1;
    case 128 : *format = AV_PIX_FMT_RGB48LE; return 1;
    default: return 0;
    }
}
