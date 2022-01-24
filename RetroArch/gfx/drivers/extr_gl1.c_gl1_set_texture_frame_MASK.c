#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  menu_linear_filter; } ;
struct TYPE_7__ {TYPE_1__ bools; } ;
typedef  TYPE_2__ settings_t ;
struct TYPE_8__ {int /*<<< orphan*/  menu_smooth; } ;
typedef  TYPE_3__ gl1_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 int gl1_menu_bits ; 
 unsigned char* gl1_menu_frame ; 
 unsigned int gl1_menu_height ; 
 unsigned int gl1_menu_pitch ; 
 int gl1_menu_size_changed ; 
 unsigned int gl1_menu_width ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,void const*,unsigned int) ; 

__attribute__((used)) static void FUNC5(void *data,
      const void *frame, bool rgb32, unsigned width, unsigned height,
      float alpha)
{
   settings_t *settings = FUNC0();
   unsigned pitch = width * 2;
   gl1_t *gl1 = (gl1_t*)data;

   if (!gl1)
      return;

   gl1->menu_smooth = settings->bools.menu_linear_filter;

   FUNC2(gl1, false);

   if (rgb32)
      pitch = width * 4;

   if (gl1_menu_frame)
   {
      FUNC1(gl1_menu_frame);
      gl1_menu_frame = NULL;
   }

   if ( !gl1_menu_frame            ||
         gl1_menu_width != width   ||
         gl1_menu_height != height ||
         gl1_menu_pitch != pitch)
   {
      if (pitch && height)
      {
         if (gl1_menu_frame)
            FUNC1(gl1_menu_frame);

         /* FIXME? We have to assume the pitch has no extra padding in it because that will mess up the POT calculation when we don't know how many bpp there are. */
         gl1_menu_frame = (unsigned char*)FUNC3(pitch * height);
      }
   }

   if (gl1_menu_frame && frame && pitch && height)
   {
      FUNC4(gl1_menu_frame, frame, pitch * height);
      gl1_menu_width  = width;
      gl1_menu_height = height;
      gl1_menu_pitch  = pitch;
      gl1_menu_bits   = rgb32 ? 32 : 16;
      gl1_menu_size_changed = true;
   }

   FUNC2(gl1, true);
}