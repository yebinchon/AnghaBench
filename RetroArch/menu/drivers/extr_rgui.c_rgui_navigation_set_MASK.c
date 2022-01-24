#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t scroll_y; } ;
typedef  TYPE_1__ rgui_t ;
struct TYPE_6__ {int height; } ;

/* Variables and functions */
 size_t FONT_HEIGHT_STRIDE ; 
 int /*<<< orphan*/  MENU_ENTRIES_CTL_SET_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t*) ; 
 size_t FUNC1 () ; 
 size_t FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 TYPE_3__ rgui_term_layout ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(void *data, bool scroll)
{
   size_t start;
   bool do_set_start              = false;
   size_t end                     = FUNC1();
   size_t selection               = FUNC2();
   rgui_t *rgui = (rgui_t*)data;

   if (!rgui)
      return;

   FUNC3(rgui, false);
   FUNC4(rgui);

   if (!scroll)
      return;

   if (selection < rgui_term_layout.height /2)
   {
      start        = 0;
      do_set_start = true;
   }
   else if (selection >= (rgui_term_layout.height /2)
         && selection < (end - rgui_term_layout.height /2))
   {
      start        = selection - rgui_term_layout.height /2;
      do_set_start = true;
   }
   else if (selection >= (end - rgui_term_layout.height /2))
   {
      start        = end - rgui_term_layout.height;
      do_set_start = true;
   }

   if (do_set_start)
   {
      FUNC0(MENU_ENTRIES_CTL_SET_START, &start);
      rgui->scroll_y = start * FONT_HEIGHT_STRIDE;
   }
}