
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOFTFILTER_FMT_RGB565 ;
 int SOFTFILTER_FMT_XRGB8888 ;

__attribute__((used)) static unsigned scanline2x_generic_input_fmts(void)
{
   return SOFTFILTER_FMT_XRGB8888 | SOFTFILTER_FMT_RGB565;
}
