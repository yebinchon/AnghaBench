
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SWS_CS_DEFAULT ;
 int const** ff_yuv2rgb_coeffs ;

const int *sws_getCoefficients(int colorspace)
{
    if (colorspace > 10 || colorspace < 0 || colorspace == 8)
        colorspace = SWS_CS_DEFAULT;
    return ff_yuv2rgb_coeffs[colorspace];
}
