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
struct TYPE_3__ {int /*<<< orphan*/  filebrowser_label; } ;
typedef  TYPE_1__ menu_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACTION_OK_DL_FILE_BROWSER_SELECT_DIR ; 
 int /*<<< orphan*/  FILEBROWSER_SELECT_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *,char const*,unsigned int,size_t,size_t,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 

int FUNC5(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   menu_handle_t *menu       = FUNC3();

   if (!menu)
      return FUNC2();

   FUNC0(FILEBROWSER_SELECT_DIR);
   FUNC4(menu->filebrowser_label, label, sizeof(menu->filebrowser_label));
   return FUNC1(path, NULL, label, type, idx,
         entry_idx, ACTION_OK_DL_FILE_BROWSER_SELECT_DIR);
}