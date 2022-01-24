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
 int /*<<< orphan*/  FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *,int) ; 

unsigned FUNC3(const char *str)
{
   const char *ptr = NULL;

   if (FUNC1(str))
      return 0;

   for (ptr = str; *ptr != '\0'; ptr++)
   {
      if (!FUNC0(*ptr))
         return 0;
   }

   return (unsigned)FUNC2(str, NULL, 10);
}