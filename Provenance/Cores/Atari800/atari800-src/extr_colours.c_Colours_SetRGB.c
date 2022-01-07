
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void Colours_SetRGB(int i, int r, int g, int b, int *colortable_ptr)
{
 if (r < 0)
  r = 0;
 else if (r > 255)
  r = 255;
 if (g < 0)
  g = 0;
 else if (g > 255)
  g = 255;
 if (b < 0)
  b = 0;
 else if (b > 255)
  b = 255;
 colortable_ptr[i] = (r << 16) + (g << 8) + b;
}
