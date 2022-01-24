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
struct TYPE_4__ {float margins_screen_top; float margins_screen_left; int depth; } ;
typedef  TYPE_1__ xmb_handle_t ;
typedef  int /*<<< orphan*/  menu_file_list_cbs_t ;
typedef  int /*<<< orphan*/  menu_entry_t ;
typedef  unsigned int int16_t ;
typedef  enum menu_input_pointer_gesture { ____Placeholder_menu_input_pointer_gesture } menu_input_pointer_gesture ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ACTION_CANCEL ; 
 int /*<<< orphan*/  MENU_ACTION_LEFT ; 
 int /*<<< orphan*/  MENU_ACTION_RIGHT ; 
 int /*<<< orphan*/  MENU_ACTION_SCROLL_DOWN ; 
 int /*<<< orphan*/  MENU_ACTION_SCROLL_UP ; 
 int /*<<< orphan*/  MENU_ACTION_SELECT ; 
 int /*<<< orphan*/  MENU_ACTION_START ; 
#define  MENU_INPUT_GESTURE_LONG_PRESS 134 
#define  MENU_INPUT_GESTURE_SHORT_PRESS 133 
#define  MENU_INPUT_GESTURE_SWIPE_DOWN 132 
#define  MENU_INPUT_GESTURE_SWIPE_LEFT 131 
#define  MENU_INPUT_GESTURE_SWIPE_RIGHT 130 
#define  MENU_INPUT_GESTURE_SWIPE_UP 129 
#define  MENU_INPUT_GESTURE_TAP 128 
 int /*<<< orphan*/  MENU_NAVIGATION_CTL_CLEAR ; 
 int /*<<< orphan*/  MENU_NAVIGATION_CTL_SET_LAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 size_t FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,unsigned int,unsigned int,unsigned int,unsigned int*,unsigned int*) ; 
 float FUNC9 (TYPE_1__*,unsigned int,size_t) ; 

__attribute__((used)) static int FUNC10(void *userdata,
      unsigned x, unsigned y, unsigned ptr,
      enum menu_input_pointer_gesture gesture,
      menu_file_list_cbs_t *cbs,
      menu_entry_t *entry, unsigned action)
{
   xmb_handle_t *xmb      = (xmb_handle_t*)userdata;
   size_t selection       = FUNC5();
   unsigned end           = (unsigned)FUNC2();
   unsigned width;
   unsigned height;
   int16_t margin_top;
   int16_t margin_left;
   int16_t margin_right;

   if (!xmb)
      return -1;

   FUNC7(&width, &height);
   margin_top   = (int16_t)xmb->margins_screen_top;
   margin_left  = (int16_t)xmb->margins_screen_left;
   margin_right = (int16_t)((float)width - xmb->margins_screen_left);

   switch (gesture)
   {
      case MENU_INPUT_GESTURE_TAP:
      case MENU_INPUT_GESTURE_SHORT_PRESS:
         /* - A touch in the left margin:
          *   > ...triggers a 'cancel' action beneath the top margin
          *   > ...triggers a 'search' action above the top margin
          * - A touch in the right margin triggers a 'select' action
          *   for the current item
          * - Between the left/right margins input is handled normally */
         if (x < margin_left)
         {
            if (y >= margin_top)
               return FUNC3(entry, selection, MENU_ACTION_CANCEL);
            else
               return FUNC4() ? 0 : -1;
         }
         else if (x > margin_right)
            return FUNC3(entry, selection, MENU_ACTION_SELECT);
         else if (ptr <= (end - 1))
         {
            /* If pointer item is already 'active', perform 'select' action */
            if (ptr == selection)
               return FUNC3(entry, selection, MENU_ACTION_SELECT);

            /* ...otherwise navigate to the current pointer item */
            FUNC6(ptr);
            FUNC1(false);
         }
         break;
      case MENU_INPUT_GESTURE_LONG_PRESS:
         /* 'Reset to default' action */
         if ((ptr <= end - 1) && (ptr == selection))
            return FUNC3(entry, selection, MENU_ACTION_START);
         break;
      case MENU_INPUT_GESTURE_SWIPE_LEFT:
         /* Navigate left
          * Note: At the top level, navigating left
          * means switching to the 'next' horizontal list,
          * which is actually a movement to the *right* */
         if (y > margin_top)
            FUNC3(
                  entry, selection, (xmb->depth == 1) ? MENU_ACTION_RIGHT : MENU_ACTION_LEFT);
         break;
      case MENU_INPUT_GESTURE_SWIPE_RIGHT:
         /* Navigate right
          * Note: At the top level, navigating right
          * means switching to the 'previous' horizontal list,
          * which is actually a movement to the *left* */
         if (y > margin_top)
            FUNC3(
                  entry, selection, (xmb->depth == 1) ? MENU_ACTION_LEFT : MENU_ACTION_RIGHT);
         break;
      case MENU_INPUT_GESTURE_SWIPE_UP:
         /* Swipe up in left margin: ascend alphabet */
         if (x < margin_left)
            FUNC3(entry, selection, MENU_ACTION_SCROLL_DOWN);
         else if (x < margin_right)
         {
            /* Swipe up between left and right margins:
             * move selection pointer down by 1 'page' */
            unsigned first = 0;
            unsigned last  = end;

            if (height)
               FUNC8(xmb, height,
                     end, (unsigned)selection, &first, &last);

            if (last < end)
            {
               FUNC6((size_t)last);
               FUNC1(true);
            }
            else
               FUNC0(MENU_NAVIGATION_CTL_SET_LAST, NULL);
         }
         break;
      case MENU_INPUT_GESTURE_SWIPE_DOWN:
         /* Swipe down in left margin: descend alphabet */
         if (x < margin_left)
            FUNC3(entry, selection, MENU_ACTION_SCROLL_UP);
         else if (x < margin_right)
         {
            /* Swipe down between left and right margins:
             * move selection pointer up by 1 'page' */
            unsigned bottom_idx = (unsigned)selection + 1;
            size_t new_idx;
            unsigned step;

            /* Determine index of entry at bottom of screen
             * Note: cannot use xmb_calculate_visible_range()
             * here because there may not be sufficient entries
             * to reach the bottom of the screen - i.e. we just
             * want an index offset to subtract from the current
             * selection... */
            while (true)
            {
               float top = FUNC9(xmb, bottom_idx, selection) + xmb->margins_screen_top;

               if (top > height)
               {
                  /* Since this checks the top position, the
                   * final index is always 1 greater than it
                   * should be... */
                  bottom_idx--;
                  break;
               }

               bottom_idx++;
            }

            step     = (bottom_idx >= selection) ? bottom_idx - selection : 0;
            new_idx  = (selection  > step)       ? selection - step       : 0;

            if (new_idx > 0)
            {
               FUNC6(new_idx);
               FUNC1(true);
            }
            else
            {
               bool pending_push = false;
               FUNC0(MENU_NAVIGATION_CTL_CLEAR, &pending_push);
            }
         }
         break;
      default:
         /* Ignore input */
         break;
   }

   return 0;
}