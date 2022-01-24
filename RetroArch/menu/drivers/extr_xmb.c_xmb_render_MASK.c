#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {float previous_scale_factor; float margins_screen_top; float icon_spacing_vertical; float active_item_factor; int depth; scalar_t__ margins_screen_left; } ;
typedef  TYPE_2__ xmb_handle_t ;
struct TYPE_14__ {float menu_scale_factor; } ;
struct TYPE_16__ {TYPE_1__ floats; } ;
typedef  TYPE_3__ settings_t ;
struct TYPE_17__ {scalar_t__ type; scalar_t__ x; scalar_t__ y; int press_direction; } ;
typedef  TYPE_4__ menu_input_pointer_t ;
struct TYPE_18__ {int path_enabled; int label_enabled; int rich_label_enabled; int value_enabled; int sublabel_enabled; } ;
typedef  TYPE_5__ menu_entry_t ;
typedef  scalar_t__ int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ACTION_DOWN ; 
 int /*<<< orphan*/  MENU_ACTION_LEFT ; 
 int /*<<< orphan*/  MENU_ACTION_RIGHT ; 
 int /*<<< orphan*/  MENU_ACTION_UP ; 
 int /*<<< orphan*/  MENU_ANIMATION_CTL_CLEAR_ACTIVE ; 
 int /*<<< orphan*/  MENU_ENTRIES_CTL_SET_START ; 
 int /*<<< orphan*/  MENU_ENTRIES_CTL_START_GET ; 
#define  MENU_INPUT_PRESS_DIRECTION_DOWN 131 
#define  MENU_INPUT_PRESS_DIRECTION_LEFT 130 
 int MENU_INPUT_PRESS_DIRECTION_NONE ; 
#define  MENU_INPUT_PRESS_DIRECTION_RIGHT 129 
#define  MENU_INPUT_PRESS_DIRECTION_UP 128 
 scalar_t__ MENU_POINTER_DISABLED ; 
 TYPE_3__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (size_t) ; 
 size_t FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,unsigned int,unsigned int,unsigned int,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 float FUNC15 (TYPE_2__*,int,size_t) ; 

__attribute__((used)) static void FUNC16(void *data, 
      unsigned width, unsigned height, bool is_idle)
{
   size_t i;
   float scale_factor;
   menu_input_pointer_t pointer;
   settings_t   *settings   = FUNC0();
   xmb_handle_t *xmb        = (xmb_handle_t*)data;
   unsigned      end        = (unsigned)FUNC5();

   if (!xmb)
      return;

   scale_factor = (settings->floats.menu_scale_factor * (float)width) / 1920.0f;

   if (scale_factor >= 0.1f && scale_factor != xmb->previous_scale_factor)
      FUNC14(xmb, FUNC12(),
            false);

   xmb->previous_scale_factor = scale_factor;

   FUNC9(&pointer);

   if (pointer.type != MENU_POINTER_DISABLED)
   {
      size_t selection     = FUNC11();
      int16_t margin_top   = (int16_t)xmb->margins_screen_top;
      int16_t margin_left  = (int16_t)xmb->margins_screen_left;
      int16_t margin_right = (int16_t)((float)width - xmb->margins_screen_left);
      int16_t pointer_x    = pointer.x;
      int16_t pointer_y    = pointer.y;

      /* This must be set every frame when using a pointer,
       * otherwise touchscreen input breaks when changing
       * orientation */
      FUNC3(width);
      FUNC2(height);

      /* When determining current pointer selection, we
       * only track pointer movements between the left
       * and right screen margins */
      if ((pointer_x > margin_left) && (pointer_x < margin_right))
      {
         unsigned first = 0;
         unsigned last = end;

         if (height)
            FUNC13(xmb, height,
                  end, (unsigned)selection, &first, &last);

         for (i = first; i <= last; i++)
         {
            float entry_size      = (i == selection) ?
                  xmb->icon_spacing_vertical * xmb->active_item_factor : xmb->icon_spacing_vertical;
            float half_entry_size = entry_size * 0.5f;
            float y_curr;
            int y1;
            int y2;

            y_curr = FUNC15(xmb, (int)i, selection) + xmb->margins_screen_top;

            y1 = (int)((y_curr - half_entry_size) + 0.5f);
            y2 = (int)((y_curr + half_entry_size) + 0.5f);

            if ((pointer_y > y1) && (pointer_y < y2))
            {
               FUNC10(i);
               break;
            }
         }
      }

      /* Areas beyond the top/right margins are used
       * as a sort of virtual dpad:
       * - Above top margin: navigate left/right
       * - Beyond right margin: navigate up/down */
      if ((pointer_y < margin_top) || (pointer_x > margin_right))
      {
         menu_entry_t entry;

         if (pointer.press_direction != MENU_INPUT_PRESS_DIRECTION_NONE)
         {
            FUNC8(&entry);
            entry.path_enabled       = false;
            entry.label_enabled      = false;
            entry.rich_label_enabled = false;
            entry.value_enabled      = false;
            entry.sublabel_enabled   = false;
            FUNC7(&entry, 0, selection, NULL, true);
         }

         switch (pointer.press_direction)
         {
            case MENU_INPUT_PRESS_DIRECTION_UP:
               /* Note: Direction is inverted, since 'up' should
                * move list upwards */
               if (pointer_x > margin_right)
                  FUNC6(&entry, selection, MENU_ACTION_DOWN);
               break;
            case MENU_INPUT_PRESS_DIRECTION_DOWN:
               /* Note: Direction is inverted, since 'down' should
                * move list downwards */
               if (pointer_x > margin_right)
                  FUNC6(&entry, selection, MENU_ACTION_UP);
               break;
            case MENU_INPUT_PRESS_DIRECTION_LEFT:
               /* Navigate left
                * Note: At the top level, navigating left
                * means switching to the 'next' horizontal list,
                * which is actually a movement to the *right* */
               if (pointer_y < margin_top)
                  FUNC6(
                        &entry, selection, (xmb->depth == 1) ? MENU_ACTION_RIGHT : MENU_ACTION_LEFT);
               break;
            case MENU_INPUT_PRESS_DIRECTION_RIGHT:
               /* Navigate right
                * Note: At the top level, navigating right
                * means switching to the 'previous' horizontal list,
                * which is actually a movement to the *left* */
               if (pointer_y < margin_top)
                  FUNC6(
                        &entry, selection, (xmb->depth == 1) ? MENU_ACTION_LEFT : MENU_ACTION_RIGHT);
               break;
            default:
               /* Do nothing */
               break;
         }
      }
   }

   FUNC4(MENU_ENTRIES_CTL_START_GET, &i);

   if (i >= end)
   {
      i = 0;
      FUNC4(MENU_ENTRIES_CTL_SET_START, &i);
   }

   FUNC1(MENU_ANIMATION_CTL_CLEAR_ACTIVE, NULL);
}