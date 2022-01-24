#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ozone_handle_t ;
struct TYPE_12__ {int /*<<< orphan*/  (* action_content_list_switch ) (TYPE_4__*,TYPE_4__*,char*,char*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ menu_file_list_cbs_t ;
struct TYPE_13__ {int /*<<< orphan*/  action; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ menu_ctx_list_t ;
struct TYPE_14__ {size_t size; TYPE_1__* list; } ;
typedef  TYPE_4__ file_list_t ;
typedef  enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;
typedef  enum menu_settings_type { ____Placeholder_menu_settings_type } menu_settings_type ;
struct TYPE_11__ {int type; int /*<<< orphan*/ * label; } ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ACTION_LEFT ; 
 int /*<<< orphan*/  MENU_LIST_HORIZONTAL ; 
 scalar_t__ FUNC0 (TYPE_4__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,TYPE_4__*,char*,char*,int /*<<< orphan*/ ) ; 

void FUNC9(ozone_handle_t *ozone,
      enum msg_hash_enums tab,
      enum menu_settings_type type)
{
   file_list_t *menu_stack = FUNC3(0);
   size_t stack_size;
   menu_ctx_list_t list_info;
   file_list_t *selection_buf = FUNC4(0);
   size_t selection = FUNC5();
   menu_file_list_cbs_t *cbs = selection_buf ?
      (menu_file_list_cbs_t*)FUNC0(selection_buf,
            selection) : NULL;

   list_info.type = MENU_LIST_HORIZONTAL;
   list_info.action = MENU_ACTION_LEFT;

   stack_size = menu_stack->size;

   if (menu_stack->list[stack_size - 1].label)
      FUNC1(menu_stack->list[stack_size - 1].label);
   menu_stack->list[stack_size - 1].label = NULL;

   menu_stack->list[stack_size - 1].label =
      FUNC7(FUNC6(tab));
   menu_stack->list[stack_size - 1].type =
      type;

   FUNC2(&list_info);

   if (cbs && cbs->action_content_list_switch)
      cbs->action_content_list_switch(selection_buf, menu_stack, "", "", 0);
}