
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w; int h; scalar_t__* pixels; } ;


 TYPE_1__* plat_sdl_overlay ;

void plat_sdl_overlay_clear(void)
{
  int pixels = plat_sdl_overlay->w * plat_sdl_overlay->h;
  int *dst = (int *)plat_sdl_overlay->pixels[0];
  int v = 0x10801080;

  for (; pixels > 0; dst += 4, pixels -= 2 * 4)
    dst[0] = dst[1] = dst[2] = dst[3] = v;

  for (; pixels > 0; dst++, pixels -= 2)
    *dst = v;
}
