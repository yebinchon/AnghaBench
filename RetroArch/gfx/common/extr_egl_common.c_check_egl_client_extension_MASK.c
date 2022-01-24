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
 int /*<<< orphan*/  EGL_EXTENSIONS ; 
 int /*<<< orphan*/  EGL_NO_DISPLAY ; 
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (char const*,char*) ; 
 size_t FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 

bool FUNC5(const char *name)
{
   size_t nameLen;
   const char *str = FUNC0(EGL_NO_DISPLAY, EGL_EXTENSIONS);

   /* The EGL implementation doesn't support client extensions at all. */
   if (!str)
      return false;

   nameLen = FUNC2(name);
   while (*str != '\0')
   {
      /* Use strspn and strcspn to find the start position and length of each
       * token in the extension string. Using strtok could also work, but
       * that would require allocating a copy of the string. */
      size_t len = FUNC1(str, " ");
      if (len == nameLen && FUNC3(str, name, nameLen) == 0)
         return true;
      str += len;
      str += FUNC4(str, " ");
   }

   return false;
}