#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int (* action_content_list_switch ) (TYPE_4__*,TYPE_4__*,char*,char*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ menu_file_list_cbs_t ;
struct TYPE_12__ {int /*<<< orphan*/  action; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ menu_ctx_list_t ;
struct TYPE_13__ {TYPE_1__* list; } ;
typedef  TYPE_4__ file_list_t ;
struct TYPE_10__ {scalar_t__ actiondata; } ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ACTION_RIGHT ; 
 int /*<<< orphan*/  MENU_LIST_HORIZONTAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 () ; 
 int FUNC4 (TYPE_4__*,TYPE_4__*,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void)
{
   menu_ctx_list_t list_info;
   file_list_t *selection_buf = FUNC2(0);
   file_list_t *menu_stack    = FUNC1(0);
   size_t selection           = FUNC3();
   menu_file_list_cbs_t *cbs  = selection_buf ? (menu_file_list_cbs_t*)
      selection_buf->list[selection].actiondata : NULL;

   list_info.type             = MENU_LIST_HORIZONTAL;
   list_info.action           = MENU_ACTION_RIGHT;

   FUNC0(&list_info);

   if (cbs && cbs->action_content_list_switch)
      return cbs->action_content_list_switch(selection_buf, menu_stack,
            "", "", 0);

   return 0;
}