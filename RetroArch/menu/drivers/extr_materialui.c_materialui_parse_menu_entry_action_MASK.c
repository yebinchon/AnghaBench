#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  is_dropdown_list; int /*<<< orphan*/  is_file_list; int /*<<< orphan*/  is_playlist; } ;
typedef  TYPE_1__ materialui_handle_t ;
typedef  enum menu_action { ____Placeholder_menu_action } menu_action ;

/* Variables and functions */
#define  MENU_ACTION_DOWN 133 
#define  MENU_ACTION_LEFT 132 
 int MENU_ACTION_NOOP ; 
#define  MENU_ACTION_RIGHT 131 
#define  MENU_ACTION_SCROLL_DOWN 130 
#define  MENU_ACTION_SCROLL_UP 129 
#define  MENU_ACTION_UP 128 
 int /*<<< orphan*/  MENU_LIST_PLAIN ; 
 int /*<<< orphan*/  MUI_ONSCREEN_ENTRY_CENTRE ; 
 int /*<<< orphan*/  MUI_ONSCREEN_ENTRY_FIRST ; 
 int /*<<< orphan*/  MUI_ONSCREEN_ENTRY_LAST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 size_t FUNC4 () ; 

__attribute__((used)) static enum menu_action FUNC5(
      materialui_handle_t *mui, enum menu_action action)
{
   enum menu_action new_action = action;

   /* Scan user inputs */
   switch (action)
   {
      case MENU_ACTION_UP:
      case MENU_ACTION_DOWN:
         /* Navigate up/down
          * > If current selection is off screen,
          *   auto select 'middle' item */
         FUNC0(mui, MUI_ONSCREEN_ENTRY_CENTRE);
         break;
      case MENU_ACTION_LEFT:
      case MENU_ACTION_RIGHT:
         /* Navigate left/right
          * > If this is a top level menu, left/right is
          *   used to switch tabs */
         if (FUNC2(mui, MENU_LIST_PLAIN) == 1)
         {
            FUNC3(mui, NULL, action);
            new_action = MENU_ACTION_NOOP;
         }
         else
         {
            /* If this is a playlist, file list or drop down
             * list, left/right are used for fast navigation
             * > If current selection is off screen, auto select
             *  'middle' item */
            if (mui->is_playlist || mui->is_file_list || mui->is_dropdown_list)
               FUNC0(mui, MUI_ONSCREEN_ENTRY_CENTRE);
            else
            {
               size_t selection = FUNC4();

               /* In all other cases, if current selection is off
                * screen, have to disable input - otherwise user can
                * inadvertently change the value of settings they
                * cannot see... */
               if (!FUNC1(mui, selection))
                  new_action = MENU_ACTION_NOOP;
            }
         }
         break;
      case MENU_ACTION_SCROLL_UP:
         /* Descend alphabet (Z towards A)
          * > If current selection is off screen,
          *   auto select *last* item */
         FUNC0(mui, MUI_ONSCREEN_ENTRY_LAST);
         break;
      case MENU_ACTION_SCROLL_DOWN:
         /* Ascend alphabet (A towards Z)
          * > If current selection is off screen,
          *   auto select *first* item */
         FUNC0(mui, MUI_ONSCREEN_ENTRY_FIRST);
         break;
      default:
         /* In all other cases, pass through input
          * menu action without intervention */
         break;
   }

   return new_action;
}