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
 char* FUNC0 (char*,char const*) ; 

__attribute__((used)) static void FUNC1(char *source, const char *str)
{
   /* #pragma parameter lines tend to have " characters in them,
    * which is not legal GLSL. */
   char *s = FUNC0(source, str);

   while (s)
   {
      /* #pragmas have to be on a single line,
       * so we can just replace the entire line with spaces. */
      while (*s != '\0' && *s != '\n')
         *s++ = ' ';
      s = FUNC0(s, str);
   }
}