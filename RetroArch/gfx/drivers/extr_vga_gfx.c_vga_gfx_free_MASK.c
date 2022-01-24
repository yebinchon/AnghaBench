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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * vga_frame ; 
 int /*<<< orphan*/ * vga_menu_frame ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(void *data)
{
   (void)data;

   if (vga_frame)
   {
      FUNC0(vga_frame);
      vga_frame = NULL;
   }

   if (vga_menu_frame)
   {
      FUNC0(vga_menu_frame);
      vga_menu_frame = NULL;
   }

   FUNC1();
}