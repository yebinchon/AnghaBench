#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int quitting; int should_resize; } ;
typedef  TYPE_1__ d3d8_video_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,unsigned int*,unsigned int*) ; 

__attribute__((used)) static bool FUNC5(void *data)
{
   unsigned temp_width  = 0;
   unsigned temp_height = 0;
   bool ret             = false;
   d3d8_video_t *d3d     = (d3d8_video_t*)data;
   bool        quit     = false;
   bool        resize   = false;

   /* Needed because some context drivers don't track their sizes */
   FUNC2(&temp_width, &temp_height);

#ifndef _XBOX
   FUNC4(&quit, &resize, &temp_width, &temp_height);
#endif

   if (quit)
      d3d->quitting = quit;

   if (resize)
   {
      d3d->should_resize = true;
      FUNC1(d3d, temp_width, temp_height);
      FUNC0(d3d);
   }

   ret = !quit;

   if (temp_width != 0 && temp_height != 0)
      FUNC3(&temp_width, &temp_height);

   return ret;
}