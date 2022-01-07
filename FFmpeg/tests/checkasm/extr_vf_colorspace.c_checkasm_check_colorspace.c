
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_multiply3x3 () ;
 int check_rgb2yuv () ;
 int check_yuv2rgb () ;
 int check_yuv2yuv () ;

void checkasm_check_colorspace(void)
{
    check_yuv2yuv();
    check_yuv2rgb();
    check_rgb2yuv();
    check_multiply3x3();
}
