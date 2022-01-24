#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_9__ {int bpp; TYPE_3__* cur_page; TYPE_2__* current_state; } ;
typedef  TYPE_4__ omapfb_data_t ;
struct TYPE_8__ {scalar_t__ buf; } ;
struct TYPE_6__ {int xres; } ;
struct TYPE_7__ {TYPE_1__ si; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC1(omapfb_data_t *pdata,
      const uint8_t *src, uint8_t *f_rgb,
      unsigned g_width, unsigned g_height, unsigned g_pitch,
      unsigned dst_x, unsigned dst_y)
{
   unsigned x, y;
   unsigned r, g, b;
   unsigned dst_pitch = (pdata->current_state->si.xres * pdata->bpp) >> 2;
   uint32_t *dst      = (uint32_t*)pdata->cur_page->buf + dst_y * dst_pitch + dst_x;

   for (y = 0; y < g_height; ++y, src += g_pitch, dst += dst_pitch)
   {
      for (x = 0; x < g_width; ++x)
      {
         const uint8_t blend = src[x];
         const uint32_t out = dst[x];

         if (blend == 0)
            continue;
         if (blend == 255)
         {
            FUNC0(&dst[x], f_rgb[0], f_rgb[1], f_rgb[2]);
            continue;
         }

         r = (out & 0xff0000) >> 16;
         g = (out & 0x00ff00) >> 8;
         b = (out & 0x0000ff) >> 0;

         FUNC0(&dst[x], (r * (256 - blend) + f_rgb[0] * blend) >> 8,
               (g * (256 - blend) + f_rgb[1] * blend) >> 8,
               (b * (256 - blend) + f_rgb[2] * blend) >> 8);
      }
   }
}