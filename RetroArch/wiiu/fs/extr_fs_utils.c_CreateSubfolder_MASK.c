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
struct stat {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (char*,struct stat*) ; 
 size_t FUNC3 (char*,char const*) ; 
 int FUNC4 (char const*) ; 
 char* FUNC5 (char*,char) ; 

int FUNC6(const char * fullpath)
{
   int pos;
   int result = 0;

   if (!fullpath)
      return 0;

   char dirnoslash[FUNC4(fullpath)+1];
   FUNC3(dirnoslash, fullpath);

   pos = FUNC4(dirnoslash)-1;
   while(dirnoslash[pos] == '/')
   {
      dirnoslash[pos] = '\0';
      pos--;
   }

   if (FUNC0(dirnoslash))
      return 1;

   {
      char parentpath[FUNC4(dirnoslash)+2];
      size_t copied = FUNC3(parentpath, dirnoslash);
      char * ptr    = FUNC5(parentpath, '/');

      if (!ptr)
      {
         struct stat filestat;
         /* Device root directory (must be with '/') */
         parentpath[copied]   = '/';
         parentpath[copied+1] = '\0';

         if (FUNC2(parentpath, &filestat) == 0)
            return 1;

         return 0;
      }

      ptr++;
      ptr[0] = '\0';

      result = FUNC6(parentpath);
   }

   if (!result)
      return 0;

   if (FUNC1(dirnoslash, 0777) == -1)
      return 0;

   return 1;
}