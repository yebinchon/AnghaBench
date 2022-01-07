
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;


 int AV_PIX_FMT_YUV420P ;
 int AV_PIX_FMT_YUV422P ;
 int AV_PIX_FMT_YUV444P ;




__attribute__((used)) static enum AVPixelFormat non_j_pixfmt(enum AVPixelFormat a)
{
    switch (a) {
    case 130: return AV_PIX_FMT_YUV420P;
    case 129: return AV_PIX_FMT_YUV422P;
    case 128: return AV_PIX_FMT_YUV444P;
    default:
        return a;
    }
}
