#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int gdi_menu_bits ; 
 unsigned char* gdi_menu_frame ; 
 unsigned int gdi_menu_height ; 
 unsigned int gdi_menu_pitch ; 
 unsigned int gdi_menu_width ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,void const*,unsigned int) ; 

__attribute__((used)) static void FUNC3(void *data,
      const void *frame, bool rgb32, unsigned width, unsigned height,
      float alpha)
{
   unsigned pitch = width * 2;

   if (rgb32)
      pitch = width * 4;

   if (gdi_menu_frame)
   {
      FUNC0(gdi_menu_frame);
      gdi_menu_frame = NULL;
   }

   if ( !gdi_menu_frame            ||
         gdi_menu_width != width   ||
         gdi_menu_height != height ||
         gdi_menu_pitch != pitch)
   {
      if (pitch && height)
      {
         unsigned char *tmp = (unsigned char*)FUNC1(pitch * height);

         if (tmp)
            gdi_menu_frame = tmp;
      }
   }

   if (gdi_menu_frame && frame && pitch && height)
   {
      FUNC2(gdi_menu_frame, frame, pitch * height);
      gdi_menu_width  = width;
      gdi_menu_height = height;
      gdi_menu_pitch  = pitch;
      gdi_menu_bits   = rgb32 ? 32 : 16;
   }
}