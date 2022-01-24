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
typedef  char wchar_t ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char const*) ; 

int FUNC5(const char *path)
{
#if defined(_WIN32) && !defined(_XBOX)
   /* Win32 (no Xbox) */

#if defined(_WIN32_WINNT) && _WIN32_WINNT < 0x0500
   char *path_local    = NULL;
#else
   wchar_t *path_wide  = NULL;
#endif
   if (!path || !*path)
      return -1;
#if defined(_WIN32_WINNT) && _WIN32_WINNT < 0x0500
   path_local = utf8_to_local_string_alloc(path);

   if (path_local)
   {
      int ret = remove(path_local);
      free(path_local);

      if (ret == 0)
         return 0;
   }
#else
   path_wide = utf8_to_utf16_string_alloc(path);

   if (path_wide)
   {
      int ret = _wremove(path_wide);
      free(path_wide);

      if (ret == 0)
         return 0;
   }
#endif
   return -1;
#elif defined(ORBIS)
   /* Orbis
    * TODO/FIXME - stub for now */
   return 0;
#else
   if (FUNC2(path) == 0)
      return 0;
   return -1;
#endif
}