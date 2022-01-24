#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  ACTION_OK_DL_CONTENT_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_FAVORITES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char const*,char*,int /*<<< orphan*/ ,unsigned int,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 char* FUNC4 () ; 

__attribute__((used)) static int FUNC5(const char *path,
   const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   int ret;
#ifdef __WINRT__
   char *new_path = uwp_trigger_picker();
   if (!new_path)
      return 0; /* User aborted */
#else
   char *new_path = NULL;
   FUNC3(false);
#endif

   ret = FUNC1(path, new_path,
      FUNC2(MENU_ENUM_LABEL_FAVORITES),
      type, idx,
      entry_idx, ACTION_OK_DL_CONTENT_LIST);

   FUNC0(new_path);
   return ret;
}