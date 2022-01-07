
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;




 int AV_PIX_FMT_BGR24 ;
 int AV_PIX_FMT_BGR48 ;
 int AV_PIX_FMT_GBRP ;
 int AV_PIX_FMT_GBRP10 ;
 int AV_PIX_FMT_GBRP12 ;
 int AV_PIX_FMT_GBRP16 ;
 int AV_PIX_FMT_GRAY16 ;
 int AV_PIX_FMT_GRAY8 ;
 int AV_PIX_FMT_NONE ;
 int AV_PIX_FMT_RGB24 ;
 int AV_PIX_FMT_RGB48 ;






 int AV_PIX_FMT_YUV420P ;
 int AV_PIX_FMT_YUV420P10 ;
 int AV_PIX_FMT_YUV420P16 ;
 int AV_PIX_FMT_YUV420P9 ;
 int AV_PIX_FMT_YUV422P ;
 int AV_PIX_FMT_YUV422P10 ;
 int AV_PIX_FMT_YUV422P16 ;
 int AV_PIX_FMT_YUV422P9 ;
 int AV_PIX_FMT_YUV444P ;
 int AV_PIX_FMT_YUV444P10 ;
 int AV_PIX_FMT_YUV444P16 ;
 int AV_PIX_FMT_YUV444P9 ;
__attribute__((used)) static enum AVPixelFormat alphaless_fmt(enum AVPixelFormat fmt)
{
    switch(fmt) {
    case 165: return AV_PIX_FMT_RGB24;
    case 154: return AV_PIX_FMT_RGB24;
    case 166: return AV_PIX_FMT_BGR24;
    case 164: return AV_PIX_FMT_BGR24;
    case 149: return AV_PIX_FMT_GRAY8;

    case 148: return AV_PIX_FMT_YUV420P;
    case 141: return AV_PIX_FMT_YUV422P;
    case 134: return AV_PIX_FMT_YUV444P;

    case 161: return AV_PIX_FMT_GBRP;

    case 159: return AV_PIX_FMT_GBRP10;
    case 160: return AV_PIX_FMT_GBRP10;

    case 157: return AV_PIX_FMT_GBRP12;
    case 158: return AV_PIX_FMT_GBRP12;

    case 155: return AV_PIX_FMT_GBRP16;
    case 156: return AV_PIX_FMT_GBRP16;

    case 152: return AV_PIX_FMT_RGB48;
    case 153: return AV_PIX_FMT_RGB48;
    case 162: return AV_PIX_FMT_BGR48;
    case 163: return AV_PIX_FMT_BGR48;

    case 151: return AV_PIX_FMT_GRAY16;
    case 150: return AV_PIX_FMT_GRAY16;

    case 143: return AV_PIX_FMT_YUV420P9;
    case 136: return AV_PIX_FMT_YUV422P9;
    case 129: return AV_PIX_FMT_YUV444P9;
    case 142: return AV_PIX_FMT_YUV420P9;
    case 135: return AV_PIX_FMT_YUV422P9;
    case 128: return AV_PIX_FMT_YUV444P9;
    case 147: return AV_PIX_FMT_YUV420P10;
    case 140: return AV_PIX_FMT_YUV422P10;
    case 133: return AV_PIX_FMT_YUV444P10;
    case 146: return AV_PIX_FMT_YUV420P10;
    case 139: return AV_PIX_FMT_YUV422P10;
    case 132: return AV_PIX_FMT_YUV444P10;
    case 145: return AV_PIX_FMT_YUV420P16;
    case 138: return AV_PIX_FMT_YUV422P16;
    case 131: return AV_PIX_FMT_YUV444P16;
    case 144: return AV_PIX_FMT_YUV420P16;
    case 137: return AV_PIX_FMT_YUV422P16;
    case 130: return AV_PIX_FMT_YUV444P16;




    default: return AV_PIX_FMT_NONE;
    }
}
