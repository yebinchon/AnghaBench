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
typedef  int /*<<< orphan*/  entry_real_core_path ;

/* Variables and functions */
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 

__attribute__((used)) static bool FUNC5(const char *real_core_path, const char *entry_core_path)
{
   char entry_real_core_path[PATH_MAX_LENGTH];

   entry_real_core_path[0] = '\0';

   /* Sanity check */
   if (FUNC1(real_core_path) || FUNC1(entry_core_path))
      return false;

   /* Get entry 'real' core path */
   FUNC4(entry_real_core_path, entry_core_path, sizeof(entry_real_core_path));
   if (!FUNC2(entry_real_core_path, "DETECT"))
      FUNC0(entry_real_core_path, sizeof(entry_real_core_path), true);

   if (FUNC1(entry_real_core_path))
      return false;

#ifdef _WIN32
   /* Handle case-insensitive operating systems*/
   if (string_is_equal_noncase(real_core_path, entry_real_core_path))
      return true;
#else
   if (FUNC2(real_core_path, entry_real_core_path))
      return true;
#endif

   return false;
}