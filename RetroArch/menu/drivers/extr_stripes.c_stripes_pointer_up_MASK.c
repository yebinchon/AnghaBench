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
struct TYPE_3__ {int /*<<< orphan*/  action_select; } ;
typedef  TYPE_1__ menu_file_list_cbs_t ;
typedef  int /*<<< orphan*/  menu_entry_t ;
typedef  enum menu_input_pointer_gesture { ____Placeholder_menu_input_pointer_gesture } menu_input_pointer_gesture ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ACTION_CANCEL ; 
 int /*<<< orphan*/  MENU_ACTION_SELECT ; 
 int /*<<< orphan*/  MENU_ACTION_START ; 
#define  MENU_INPUT_GESTURE_LONG_PRESS 130 
#define  MENU_INPUT_GESTURE_SHORT_PRESS 129 
#define  MENU_INPUT_GESTURE_TAP 128 
 unsigned int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 

__attribute__((used)) static int FUNC6(void *userdata,
      unsigned x, unsigned y, unsigned ptr,
      enum menu_input_pointer_gesture gesture,
      menu_file_list_cbs_t *cbs,
      menu_entry_t *entry, unsigned action)
{
   size_t selection = FUNC4();

   switch (gesture)
   {
      case MENU_INPUT_GESTURE_TAP:
      case MENU_INPUT_GESTURE_SHORT_PRESS:
         {
            /* Normal pointer input */
            unsigned header_height = FUNC0();

            if (y < header_height)
               return (unsigned)FUNC3(entry, selection, MENU_ACTION_CANCEL);
            else if (ptr <= (FUNC2() - 1))
            {
               if (ptr == selection && cbs && cbs->action_select)
                  return (unsigned)FUNC3(entry, selection, MENU_ACTION_SELECT);

               FUNC5(ptr);
               FUNC1(false);
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