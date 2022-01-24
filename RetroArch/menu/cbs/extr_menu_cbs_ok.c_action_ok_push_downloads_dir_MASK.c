#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  directory_core_assets; } ;
struct TYPE_5__ {TYPE_1__ paths; } ;
typedef  TYPE_2__ settings_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACTION_OK_DL_CONTENT_LIST ; 
 int /*<<< orphan*/  FILEBROWSER_SELECT_FILE ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_FAVORITES ; 
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   settings_t            *settings   = FUNC0();

   FUNC1(FILEBROWSER_SELECT_FILE);
   return FUNC2(path,
         settings->paths.directory_core_assets,
         FUNC3(MENU_ENUM_LABEL_FAVORITES),
         type, idx,
         entry_idx, ACTION_OK_DL_CONTENT_LIST);
}