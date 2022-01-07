
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* MAKE_PIXEL (int,int,int) ;
 void*** pixel_lut ;
 void** pixel_lut_m4 ;

__attribute__((used)) static void palette_init(void)
{
  int r, g, b, i;
  for (i = 0; i < 0x200; i++)
  {

    r = (i >> 0) & 7;
    g = (i >> 3) & 7;
    b = (i >> 6) & 7;


    pixel_lut[0][i] = MAKE_PIXEL(r,g,b);
    pixel_lut[1][i] = MAKE_PIXEL(r<<1,g<<1,b<<1);
    pixel_lut[2][i] = MAKE_PIXEL(r+7,g+7,b+7);
  }


  for (i = 0; i < 0x40; i++)
  {

    r = (i >> 0) & 3;
    g = (i >> 2) & 3;
    b = (i >> 4) & 3;


    pixel_lut_m4[i] = MAKE_PIXEL(r << 2,g << 2,b<< 2);
  }
}
