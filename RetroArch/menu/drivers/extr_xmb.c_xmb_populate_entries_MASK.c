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
struct TYPE_7__ {scalar_t__ categories_selection_ptr; int is_playlist; scalar_t__ categories_active_idx_old; void* is_quick_menu; void* is_db_manager_list; } ;
typedef  TYPE_1__ xmb_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_DATABASE_MANAGER_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_FAVORITES_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_IMAGES_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_PLAYLIST_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_RDB_ENTRY_DETAIL ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_RPL_ENTRY_ACTIONS ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_HORIZONTAL_MENU ; 
 int /*<<< orphan*/  RARCH_MENU_CTL_IS_PREVENT_POPULATE ; 
 int /*<<< orphan*/  RARCH_MENU_CTL_UNSET_PREVENT_POPULATE ; 
 unsigned int XMB_SYSTEM_TAB_FAVORITES ; 
 unsigned int XMB_SYSTEM_TAB_HISTORY ; 
 unsigned int XMB_SYSTEM_TAB_IMAGES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC8(void *data,
      const char *path,
      const char *label, unsigned k)
{
   xmb_handle_t *xmb = (xmb_handle_t*)data;
   unsigned xmb_system_tab;

   if (!xmb)
      return;

   /* Determine whether this is a playlist */
   xmb_system_tab = FUNC3(xmb, (unsigned)xmb->categories_selection_ptr);
   xmb->is_playlist = (xmb_system_tab == XMB_SYSTEM_TAB_FAVORITES) ||
                      (xmb_system_tab == XMB_SYSTEM_TAB_HISTORY) ||
#ifdef HAVE_IMAGEVIEWER
                      (xmb_system_tab == XMB_SYSTEM_TAB_IMAGES) ||
#endif
                      FUNC2(label, FUNC1(MENU_ENUM_LABEL_HORIZONTAL_MENU)) ||
                      FUNC2(label, FUNC1(MENU_ENUM_LABEL_DEFERRED_PLAYLIST_LIST)) ||
                      FUNC2(label, FUNC1(MENU_ENUM_LABEL_DEFERRED_FAVORITES_LIST)) ||
                      FUNC2(label, FUNC1(MENU_ENUM_LABEL_DEFERRED_IMAGES_LIST));
   xmb->is_playlist = xmb->is_playlist && !FUNC2(label, FUNC1(MENU_ENUM_LABEL_DEFERRED_RDB_ENTRY_DETAIL));

   /* Determine whether this is a database manager list */
   xmb->is_db_manager_list = FUNC2(label, FUNC1(MENU_ENUM_LABEL_DEFERRED_DATABASE_MANAGER_LIST));

   /* Determine whether this is the quick menu */
   xmb->is_quick_menu = FUNC2(label, FUNC1(MENU_ENUM_LABEL_DEFERRED_RPL_ENTRY_ACTIONS));

   if (FUNC0(RARCH_MENU_CTL_IS_PREVENT_POPULATE, NULL))
   {
      FUNC6(xmb, false);
      FUNC0(RARCH_MENU_CTL_UNSET_PREVENT_POPULATE, NULL);
      return;
   }

   FUNC7(xmb);

   if (xmb->categories_selection_ptr != xmb->categories_active_idx_old)
      FUNC5(xmb);
   else
      FUNC4(xmb);
}