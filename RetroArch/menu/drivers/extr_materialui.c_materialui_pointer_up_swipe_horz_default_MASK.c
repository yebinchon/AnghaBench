#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int path_enabled; int label_enabled; int rich_label_enabled; int sublabel_enabled; int /*<<< orphan*/  checked; } ;
typedef  TYPE_1__ menu_entry_t ;
struct TYPE_14__ {int /*<<< orphan*/  pointer_start_scroll_y; } ;
typedef  TYPE_2__ materialui_handle_t ;
typedef  enum msg_file_type { ____Placeholder_msg_file_type } msg_file_type ;
typedef  enum menu_action { ____Placeholder_menu_action } menu_action ;
typedef  enum materialui_entry_value_type { ____Placeholder_materialui_entry_value_type } materialui_entry_value_type ;

/* Variables and functions */
 int FILE_TYPE_NONE ; 
 int /*<<< orphan*/  MUI_ANIM_DURATION_SCROLL_RESET ; 
 int MUI_ENTRY_VALUE_NONE ; 
 int MUI_ENTRY_VALUE_SWITCH_OFF ; 
 int MUI_ENTRY_VALUE_SWITCH_ON ; 
 int MUI_ENTRY_VALUE_TEXT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,char const*,int /*<<< orphan*/ ,unsigned int,int) ; 
 int FUNC2 (TYPE_2__*,TYPE_1__*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 size_t FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(
      materialui_handle_t *mui, menu_entry_t *entry,
      unsigned ptr, size_t selection, size_t entries_end, enum menu_action action)
{
   int ret = 0;

   if ((ptr < entries_end) && (ptr == selection))
   {
      size_t new_selection = FUNC7();
      ret                  = FUNC2(
            mui, entry, selection, action);

      /* If we are changing a settings value, want to scroll
       * back to the 'pointer down' position. In all other cases
       * we do not. An entry is of the 'settings' type if:
       * - Selection pointer remains the same after MENU_ACTION event
       * - Entry value type is:
       *   > MUI_ENTRY_VALUE_TEXT
       *   > MUI_ENTRY_VALUE_SWITCH_ON
       *   > MUI_ENTRY_VALUE_SWITCH_OFF
       * Note: cannot use input (argument) entry, since this
       * will always have a blank value component */
      if (selection == new_selection)
      {
         const char *entry_value                           = NULL;
         unsigned entry_type                               = 0;
         enum msg_file_type entry_file_type                = FILE_TYPE_NONE;
         enum materialui_entry_value_type entry_value_type = MUI_ENTRY_VALUE_NONE;
         menu_entry_t last_entry;

         /* Get entry */
         FUNC6(&last_entry);
         last_entry.path_enabled       = false;
         last_entry.label_enabled      = false;
         last_entry.rich_label_enabled = false;
         last_entry.sublabel_enabled   = false;

         FUNC3(&last_entry, 0, selection, NULL, true);

         /* Parse entry */
         FUNC5(&last_entry, &entry_value);
         entry_type      = FUNC4(&last_entry);
         entry_file_type = FUNC9(FUNC8(entry_value));
         entry_value_type = FUNC1(
               mui, entry_value, last_entry.checked, entry_type, entry_file_type);

         /* If entry has a 'settings' type, reset scroll position */
         if ((entry_value_type == MUI_ENTRY_VALUE_TEXT) ||
             (entry_value_type == MUI_ENTRY_VALUE_SWITCH_ON) ||
             (entry_value_type == MUI_ENTRY_VALUE_SWITCH_OFF))
            FUNC0(
                  mui,
                  mui->pointer_start_scroll_y,
                  MUI_ANIM_DURATION_SCROLL_RESET);
      }
   }

   return ret;
}