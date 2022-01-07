
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
 int X264_CSP_BGR ;
 int X264_CSP_BGRA ;
 int X264_CSP_I400 ;
 int X264_CSP_I420 ;
 int X264_CSP_I422 ;
 int X264_CSP_I444 ;
 int X264_CSP_NV12 ;
 int X264_CSP_NV16 ;
 int X264_CSP_NV21 ;
 int X264_CSP_RGB ;

__attribute__((used)) static int convert_pix_fmt(enum AVPixelFormat pix_fmt)
{
    switch (pix_fmt) {
    case 138:
    case 130:
    case 136:
    case 137: return X264_CSP_I420;
    case 135:
    case 129:
    case 134: return X264_CSP_I422;
    case 133:
    case 128:
    case 131:
    case 132: return X264_CSP_I444;
    case 143: return X264_CSP_NV12;
    case 142:
    case 141: return X264_CSP_NV16;







    };
    return 0;
}
