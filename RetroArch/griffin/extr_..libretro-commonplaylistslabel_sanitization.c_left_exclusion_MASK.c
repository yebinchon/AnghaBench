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
 scalar_t__ FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static bool FUNC4(char *left,
      const char **strings, const size_t strings_count)
{
   unsigned i;
   char exclusion_string[32];
   char comparison_string[32];

   FUNC2(exclusion_string, left, 32);
   FUNC1(exclusion_string);

   for (i = 0; i < (unsigned)strings_count; i++)
   {
      FUNC2(comparison_string, strings[i], 32);
      FUNC1(comparison_string);

      if (FUNC0(exclusion_string,
               comparison_string, FUNC3(comparison_string)))
         return true;
   }

   return false;
}