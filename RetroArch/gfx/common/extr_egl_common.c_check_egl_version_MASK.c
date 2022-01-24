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
 int /*<<< orphan*/  EGL_NO_DISPLAY ; 
 int /*<<< orphan*/  EGL_VERSION ; 
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,char*,int*,int*) ; 

bool FUNC2(int minMajorVersion, int minMinorVersion)
{
   int count;
   int major, minor;
   const char *str = FUNC0(EGL_NO_DISPLAY, EGL_VERSION);

   if (!str)
      return false;

   count = FUNC1(str, "%d.%d", &major, &minor);
   if (count != 2)
      return false;

   if (major < minMajorVersion)
      return false;

   if (major > minMajorVersion)
      return true;

   if (minor >= minMinorVersion)
      return true;

   return false;
}