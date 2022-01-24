#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ident; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* menu_disp ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__** menu_display_ctx_drivers ; 

bool FUNC2(bool video_is_threaded)
{
   unsigned i;

   for (i = 0; menu_display_ctx_drivers[i]; i++)
   {
      if (!FUNC1(
               menu_display_ctx_drivers[i]->type,
               video_is_threaded))
         continue;

      FUNC0("[Menu]: Found menu display driver: \"%s\".\n",
            menu_display_ctx_drivers[i]->ident);
      menu_disp = menu_display_ctx_drivers[i];
      return true;
   }
   return false;
}