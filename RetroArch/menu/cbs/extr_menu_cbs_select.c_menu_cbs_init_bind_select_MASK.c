#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ enum_idx; } ;
typedef  TYPE_1__ menu_file_list_cbs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ MENU_ENUM_LABEL_CONNECT_NETPLAY_ROOM ; 
 unsigned int MENU_SETTINGS_CHEEVOS_START ; 
 unsigned int MENU_SETTINGS_CORE_OPTION_START ; 
 int /*<<< orphan*/  action_select_core_setting ; 
 int /*<<< orphan*/  action_select_default ; 
 int /*<<< orphan*/  action_select_netplay_connect_room ; 
 scalar_t__ FUNC1 (TYPE_1__*,char const*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,unsigned int) ; 

int FUNC3(menu_file_list_cbs_t *cbs,
      const char *path, const char *label, unsigned type, size_t idx)
{
   if (!cbs)
      return -1;

   FUNC0(cbs, action_select_default);

#ifdef HAVE_NETWORKING
   if (cbs->enum_idx == MENU_ENUM_LABEL_CONNECT_NETPLAY_ROOM)
   {
      BIND_ACTION_SELECT(cbs, action_select_netplay_connect_room);
      return 0;
   }
#endif

   if ((type >= MENU_SETTINGS_CORE_OPTION_START) &&
       (type < MENU_SETTINGS_CHEEVOS_START))
   {
      FUNC0(cbs, action_select_core_setting);
      return 0;
   }

   if (FUNC1(cbs, label) == 0)
      return 0;

   if (FUNC2(cbs, type) == 0)
      return 0;

   return -1;
}