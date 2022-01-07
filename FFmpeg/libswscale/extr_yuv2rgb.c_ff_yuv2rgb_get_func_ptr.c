
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int srcFormat; int dstFormat; } ;
typedef int * SwsFunc ;
typedef TYPE_1__ SwsContext ;


 scalar_t__ ARCH_PPC ;
 scalar_t__ ARCH_X86 ;
 int AV_LOG_WARNING ;
 int CONFIG_SWSCALE_ALPHA ;
 int av_get_pix_fmt_name (int) ;
 int av_log (TYPE_1__*,int ,char*,int ,int ) ;
 int * ff_yuv2rgb_init_ppc (TYPE_1__*) ;
 int * ff_yuv2rgb_init_x86 (TYPE_1__*) ;
 int isALPHA (int) ;
 int * yuv2rgb_c_12_ordered_dither ;
 int * yuv2rgb_c_15_ordered_dither ;
 int * yuv2rgb_c_16_ordered_dither ;
 int * yuv2rgb_c_1_ordered_dither ;
 int * yuv2rgb_c_24_bgr ;
 int * yuv2rgb_c_24_rgb ;
 int * yuv2rgb_c_32 ;
 int * yuv2rgb_c_48 ;
 int * yuv2rgb_c_4_ordered_dither ;
 int * yuv2rgb_c_4b_ordered_dither ;
 int * yuv2rgb_c_8_ordered_dither ;
 int * yuv2rgb_c_bgr48 ;
 int * yuva2argb_c ;
 int * yuva2rgba_c ;

SwsFunc ff_yuv2rgb_get_func_ptr(SwsContext *c)
{
    SwsFunc t = ((void*)0);

    if (ARCH_PPC)
        t = ff_yuv2rgb_init_ppc(c);
    if (ARCH_X86)
        t = ff_yuv2rgb_init_x86(c);

    if (t)
        return t;

    av_log(c, AV_LOG_WARNING,
           "No accelerated colorspace conversion found from %s to %s.\n",
           av_get_pix_fmt_name(c->srcFormat), av_get_pix_fmt_name(c->dstFormat));

    switch (c->dstFormat) {
    case 145:
    case 144:
        return yuv2rgb_c_bgr48;
    case 134:
    case 133:
        return yuv2rgb_c_48;
    case 149:
    case 150:
        if (CONFIG_SWSCALE_ALPHA && isALPHA(c->srcFormat))
            return yuva2argb_c;
    case 128:
    case 139:
        return (CONFIG_SWSCALE_ALPHA && isALPHA(c->srcFormat)) ? yuva2rgba_c : yuv2rgb_c_32;
    case 137:
        return yuv2rgb_c_24_rgb;
    case 148:
        return yuv2rgb_c_24_bgr;
    case 130:
    case 141:
        return yuv2rgb_c_16_ordered_dither;
    case 131:
    case 142:
        return yuv2rgb_c_15_ordered_dither;
    case 135:
    case 146:
        return yuv2rgb_c_12_ordered_dither;
    case 129:
    case 140:
        return yuv2rgb_c_8_ordered_dither;
    case 136:
    case 147:
        return yuv2rgb_c_4_ordered_dither;
    case 132:
    case 143:
        return yuv2rgb_c_4b_ordered_dither;
    case 138:
        return yuv2rgb_c_1_ordered_dither;
    }
    return ((void*)0);
}
