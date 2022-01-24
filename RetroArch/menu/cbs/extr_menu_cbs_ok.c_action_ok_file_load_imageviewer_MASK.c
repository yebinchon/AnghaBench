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
typedef  int /*<<< orphan*/  fullpath ;
typedef  int /*<<< orphan*/  file_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  CORE_TYPE_IMAGEVIEWER ; 
 int PATH_MAX_LENGTH ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   char fullpath[PATH_MAX_LENGTH];
   const char *menu_path           = NULL;
   file_list_t *menu_stack         = FUNC3(0);

   FUNC1(menu_stack, &menu_path, NULL, NULL, NULL);

   fullpath[0] = '\0';

   if (!FUNC4(menu_path))
      FUNC2(fullpath, menu_path, path,
            sizeof(fullpath));

   return FUNC0(fullpath, CORE_TYPE_IMAGEVIEWER);
}