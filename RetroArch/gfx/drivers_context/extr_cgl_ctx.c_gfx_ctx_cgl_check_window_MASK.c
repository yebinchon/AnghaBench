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
 int /*<<< orphan*/  FUNC0 (void*,unsigned int*,unsigned int*) ; 

__attribute__((used)) static void FUNC1(void *data, bool *quit,
      bool *resize, unsigned *width, unsigned *height, bool is_shutdown)
{
   unsigned new_width  = 0;
   unsigned new_height = 0;

   *quit = false;

   FUNC0(data, &new_width, &new_height);
   if (new_width != *width || new_height != *height)
   {
      *width  = new_width;
      *height = new_height;
      *resize = true;
   }
}