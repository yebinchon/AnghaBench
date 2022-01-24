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
struct tm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char const*,struct tm const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 

__attribute__((used)) static void FUNC5(char* ptr, size_t maxsize, const char* format,
      const struct tm* timeptr)
{
   char *local = NULL;

#if defined(__linux__) && !defined(ANDROID)
   FUNC2(ptr, maxsize, format, timeptr);
#else
   strftime(ptr, maxsize, format, timeptr);
   local = local_to_utf8_string_alloc(ptr);

   if (!string_is_empty(local))
      strlcpy(ptr, local, maxsize);

   if (local)
   {
      free(local);
      local = NULL;
   }
#endif
}