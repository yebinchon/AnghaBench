#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ thumbnail_queue_size; scalar_t__ entry_has_thumbnail; int /*<<< orphan*/  show_fs_thumbnail; } ;
typedef  TYPE_1__ rgui_t ;
typedef  int /*<<< orphan*/  menu_file_list_cbs_t ;
typedef  int /*<<< orphan*/  menu_entry_t ;
typedef  enum menu_input_pointer_gesture { ____Placeholder_menu_input_pointer_gesture } menu_input_pointer_gesture ;
struct TYPE_5__ {scalar_t__ is_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ACTION_CANCEL ; 
 int /*<<< orphan*/  MENU_ACTION_SELECT ; 
 int /*<<< orphan*/  MENU_ACTION_START ; 
#define  MENU_INPUT_GESTURE_LONG_PRESS 130 
#define  MENU_INPUT_GESTURE_SHORT_PRESS 129 
#define  MENU_INPUT_GESTURE_TAP 128 
 TYPE_3__ fs_thumbnail ; 
 unsigned int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(void *data,
      unsigned x, unsigned y, unsigned ptr,
      enum menu_input_pointer_gesture gesture,
      menu_file_list_cbs_t *cbs,
      menu_entry_t *entry, unsigned action)
{
   rgui_t *rgui           = (rgui_t*)data;
   unsigned header_height = FUNC0();
   size_t selection       = FUNC4();
   bool show_fs_thumbnail = false;

   if (!rgui)
      return -1;

   show_fs_thumbnail =
         rgui->show_fs_thumbnail &&
         rgui->entry_has_thumbnail &&
         (fs_thumbnail.is_valid || (rgui->thumbnail_queue_size > 0));

   switch (gesture)
   {
      case MENU_INPUT_GESTURE_TAP:
      case MENU_INPUT_GESTURE_SHORT_PRESS:
         {
            /* Normal pointer input */
            if (show_fs_thumbnail)
            {
               /* If we are currently showing a fullscreen thumbnail:
                * - Must provide a mechanism for toggling it off
                * - A normal mouse press should just select the current
                *   entry (for which the thumbnail is being shown) */
               if (y < header_height)
                  FUNC6(rgui);
               else
                  return FUNC3(entry, selection, MENU_ACTION_SELECT);
            }
            else
            {
               if (y < header_height)
                  return FUNC3(entry, selection, MENU_ACTION_CANCEL);
               else if (ptr <= (FUNC2() - 1))
               {
                  /* If currently selected item matches 'pointer' value,
                   * perform a MENU_ACTION_SELECT on it */
                  if (ptr == selection)
                     return FUNC3(entry, selection, MENU_ACTION_SELECT);

                  /* Otherwise, just move the current selection to the
                   * 'pointer' value */
                  FUNC5(ptr);
                  FUNC1(false);
               }
            }
         }
         break;
      case MENU_INPUT_GESTURE_LONG_PRESS:
         /* 'Reset to default' action */
         if ((ptr <= (FUNC2() - 1)) &&
             (ptr == selection))
            return FUNC3(entry, selection, MENU_ACTION_START);
         break;
      default:
         /* Ignore input */
         break;
   }

   return 0;
}