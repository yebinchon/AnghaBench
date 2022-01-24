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
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (size_t) ; 
 scalar_t__ FUNC3 (char) ; 
 int FUNC4 (char*) ; 

bool FUNC5(const char *path)
{
#ifdef __WINRT__
   bool result;
   size_t         path_sizeof = PATH_MAX_LENGTH * sizeof(char);
   char *relative_path_abbrev = (char*)malloc(path_sizeof);
   fill_pathname_abbreviate_special(relative_path_abbrev, path, path_sizeof);

   result = strlen(relative_path_abbrev) >= 2 && (relative_path_abbrev[0] == ':' || relative_path_abbrev[0] == '~') && path_char_is_slash(relative_path_abbrev[1]);

   free(relative_path_abbrev);
   return result;
#else
   return true;
#endif
}