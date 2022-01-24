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
 int /*<<< orphan*/  FUNC0 (char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int FUNC3 (char const*,char const*) ; 

bool FUNC4(const char *origin, const char *dest)
{
   int ret = 0;
   if (FUNC2(dest))
      FUNC1(dest);

   ret = FUNC3(origin, dest);
   if (!ret)
      return true;

   FUNC0("Error %d renaming file %s\n", ret, origin);
   return false;
}