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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 char* FUNC5 (char const*) ; 
 size_t FUNC6 (char*) ; 

bool FUNC7(const char *dir)
{
   bool         sret  = false;
   bool norecurse     = false;
   char     *basedir  = NULL;

   if (!(dir && *dir))
      return false;

   /* Use heap. Real chance of stack 
    * overflow if we recurse too hard. */
   basedir            = FUNC5(dir);

   if (!basedir)
	   return false;

   FUNC3(basedir);

   if (!*basedir || !FUNC4(basedir, dir))
   {
      FUNC0(basedir);
      return false;
   }

#if defined(GEKKO)
   {
      size_t len = strlen(basedir);

      /* path_parent_dir() keeps the trailing slash.
       * On Wii, mkdir() fails if the path has a
       * trailing slash...
       * We must therefore remove it. */
      if (len > 0)
         if (basedir[len - 1] == '/')
            basedir[len - 1] = '\0';
   }
#endif

   if (FUNC1(basedir))
      norecurse = true;
   else
   {
      sret      = FUNC7(basedir);

      if (sret)
         norecurse = true;
   }

   FUNC0(basedir);

   if (norecurse)
   {
      int ret = FUNC2(dir);

      /* Don't treat this as an error. */
      if (ret == -2 && FUNC1(dir))
         return true;

      return (ret == 0);
   }

   return sret;
}