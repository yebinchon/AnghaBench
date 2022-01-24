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
 scalar_t__ FUNC0 (unsigned char) ; 
 size_t FUNC1 (char* const) ; 

char *FUNC2(char *const s)
{
   if(s && *s)
   {
      size_t len     = FUNC1(s);
      char  *current = s + len - 1;

      while(current != s && FUNC0((unsigned char)*current))
      {
         --current;
         --len;
      }

      current[FUNC0((unsigned char)*current) ? 0 : 1] = '\0';
   }

   return s;
}