#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ menu_navigation_wraparound_enable; } ;
struct TYPE_17__ {TYPE_1__ bools; } ;
typedef  TYPE_3__ settings_t ;
typedef  int /*<<< orphan*/  menu_handle_t ;
struct TYPE_18__ {int (* action_content_list_switch ) (TYPE_6__*,TYPE_6__*,char*,char*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_4__ menu_file_list_cbs_t ;
struct TYPE_19__ {int size; scalar_t__ selection; int /*<<< orphan*/  action; int /*<<< orphan*/  type; } ;
typedef  TYPE_5__ menu_ctx_list_t ;
struct TYPE_20__ {TYPE_2__* list; } ;
typedef  TYPE_6__ file_list_t ;
struct TYPE_16__ {scalar_t__ actiondata; } ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ACTION_LEFT ; 
 int /*<<< orphan*/  MENU_LIST_HORIZONTAL ; 
 int /*<<< orphan*/  MENU_LIST_PLAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_3__* FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 TYPE_6__* FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC8 (int /*<<< orphan*/ ) ; 
 size_t FUNC9 () ; 
 int FUNC10 (TYPE_6__*,TYPE_6__*,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(unsigned type, const char *label,
      bool wraparound)
{
   menu_ctx_list_t list_info;
   unsigned        push_list = 0;
   menu_handle_t       *menu  = FUNC3();

   if (!menu)
      return FUNC2();

   FUNC5(&list_info);

   list_info.type = MENU_LIST_PLAIN;

   FUNC6(&list_info);

   if (list_info.size == 1)
   {
      settings_t       *settings = FUNC1();

      if ((list_info.selection != 0)
         || settings->bools.menu_navigation_wraparound_enable)
         push_list = 1;
   }
   else
      push_list = 2;

   switch (push_list)
   {
      case 1:
         {
            menu_ctx_list_t list_info;
            file_list_t *menu_stack    = FUNC7(0);
            file_list_t *selection_buf = FUNC8(0);
            size_t selection           = FUNC9();
            menu_file_list_cbs_t *cbs  = selection_buf ?
               (menu_file_list_cbs_t*)
               selection_buf->list[selection].actiondata : NULL;

            list_info.type             = MENU_LIST_HORIZONTAL;
            list_info.action           = MENU_ACTION_LEFT;

            FUNC4(&list_info);

            if (cbs && cbs->action_content_list_switch)
               return cbs->action_content_list_switch(
                     selection_buf, menu_stack, "", "", 0);
         }
         break;
      case 2:
         FUNC0(0, "", false);
         break;
      case 0:
      default:
         break;
   }

   return 0;
}