
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
 int AV_PIX_FMT_YUV411P ;
 int AV_PIX_FMT_YUV420P ;
 int AV_PIX_FMT_YUV422P ;
 int AV_PIX_FMT_YUV440P ;
 int AV_PIX_FMT_YUV444P ;






__attribute__((used)) static int handle_jpeg(enum AVPixelFormat *format)
{
    switch (*format) {
    case 131:
        *format = AV_PIX_FMT_YUV420P;
        return 1;
    case 132:
        *format = AV_PIX_FMT_YUV411P;
        return 1;
    case 130:
        *format = AV_PIX_FMT_YUV422P;
        return 1;
    case 128:
        *format = AV_PIX_FMT_YUV444P;
        return 1;
    case 129:
        *format = AV_PIX_FMT_YUV440P;
        return 1;
    case 138:
    case 133:
    case 136:
    case 137:
    case 145:
    case 146:
    case 143:
    case 144:
    case 141:
    case 142:
    case 139:
    case 140:
    case 135:
    case 134:
        return 1;
    default:
        return 0;
    }
}
