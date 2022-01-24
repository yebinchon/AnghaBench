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
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 

bool FUNC4(char *out_dir,
      const char *in_dir, size_t size)
{
   bool success = false;
   char *temp   = FUNC2(in_dir);
   char *last   = FUNC0(temp);

   if (last && last[1] == 0)
   {
      *last     = '\0';
      last      = FUNC0(temp);
   }

   if (last)
      *last     = '\0';

   in_dir       = FUNC0(temp);

   success      = in_dir && in_dir[1];

   if (success)
      FUNC3(out_dir, in_dir + 1, size);

   FUNC1(temp);
   return success;
}