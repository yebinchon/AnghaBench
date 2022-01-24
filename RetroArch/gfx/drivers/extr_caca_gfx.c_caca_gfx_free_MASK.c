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
 int /*<<< orphan*/ * caca_display ; 
 int /*<<< orphan*/ * caca_dither ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * caca_menu_frame ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *data)
{
   (void)data;

   if (caca_display)
   {
      FUNC0(caca_display);
      caca_display = NULL;
   }

   if (caca_dither)
   {
      FUNC1(caca_dither);
      caca_dither = NULL;
   }

   if (caca_menu_frame)
   {
      FUNC2(caca_menu_frame);
      caca_menu_frame = NULL;
   }
}