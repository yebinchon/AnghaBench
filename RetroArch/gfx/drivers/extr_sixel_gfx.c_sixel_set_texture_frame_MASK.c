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
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,void const*,unsigned int) ; 
 int sixel_menu_bits ; 
 unsigned char* sixel_menu_frame ; 
 unsigned int sixel_menu_height ; 
 unsigned int sixel_menu_pitch ; 
 unsigned int sixel_menu_width ; 

__attribute__((used)) static void FUNC3(void *data,
      const void *frame, bool rgb32, unsigned width, unsigned height,
      float alpha)
{
   unsigned pitch = width * 2;

   if (rgb32)
      pitch = width * 4;

   if (sixel_menu_frame)
   {
      FUNC0(sixel_menu_frame);
      sixel_menu_frame = NULL;
   }

   if (!sixel_menu_frame || sixel_menu_width != width || sixel_menu_height != height || sixel_menu_pitch != pitch)
      if (pitch && height)
         sixel_menu_frame = (unsigned char*)FUNC1(pitch * height);

   if (sixel_menu_frame && frame && pitch && height)
   {
      FUNC2(sixel_menu_frame, frame, pitch * height);
      sixel_menu_width  = width;
      sixel_menu_height = height;
      sixel_menu_pitch  = pitch;
      sixel_menu_bits   = rgb32 ? 32 : 16;
   }
}