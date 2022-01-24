#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int cursor_size; float margins_screen_top; float icon_size; } ;
typedef  TYPE_1__ stripes_handle_t ;
typedef  int /*<<< orphan*/  settings_t ;
struct TYPE_7__ {scalar_t__ type; float y; } ;
typedef  TYPE_2__ menu_input_pointer_t ;
typedef  float int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ANIMATION_CTL_CLEAR_ACTIVE ; 
 int /*<<< orphan*/  MENU_ENTRIES_CTL_SET_START ; 
 int /*<<< orphan*/  MENU_ENTRIES_CTL_START_GET ; 
 scalar_t__ MENU_POINTER_DISABLED ; 
 scalar_t__ MENU_POINTER_MOUSE ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (size_t) ; 
 size_t FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,unsigned int,unsigned int,size_t,unsigned int*,unsigned int*) ; 
 float FUNC8 (TYPE_1__*,int,size_t) ; 

__attribute__((used)) static void FUNC9(void *data,
      unsigned width, unsigned height,
      bool is_idle)
{
   size_t i;
   menu_input_pointer_t pointer;
   settings_t   *settings   = FUNC0();
   stripes_handle_t *stripes        = (stripes_handle_t*)data;
   unsigned      end        = (unsigned)FUNC3();

   if (!stripes)
      return;

   FUNC4(&pointer);

   if (pointer.type != MENU_POINTER_DISABLED)
   {
      size_t selection  = FUNC6();
      int16_t pointer_y = pointer.y;
      unsigned first = 0, last = end;

      pointer_y = (pointer.type == MENU_POINTER_MOUSE) ?
            pointer_y + (stripes->cursor_size/2) : pointer_y;

      if (height)
         FUNC7(stripes, height,
               end, selection, &first, &last);

      for (i = first; i <= last; i++)
      {
         float item_y1     = stripes->margins_screen_top
            + FUNC8(stripes, (int)i, selection);
         float item_y2     = item_y1 + stripes->icon_size;

         if (pointer_y > item_y1 && pointer_y < item_y2)
            FUNC5(i);
      }
   }

   FUNC2(MENU_ENTRIES_CTL_START_GET, &i);

   if (i >= end)
   {
      i = 0;
      FUNC2(MENU_ENTRIES_CTL_SET_START, &i);
   }

   FUNC1(MENU_ANIMATION_CTL_CLEAR_ACTIVE, NULL);
}