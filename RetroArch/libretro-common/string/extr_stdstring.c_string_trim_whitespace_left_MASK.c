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
 int /*<<< orphan*/  FUNC1 (char* const,char*,size_t) ; 
 size_t FUNC2 (char* const) ; 

char *FUNC3(char *const s)
{
   if(s && *s)
   {
      size_t len     = FUNC2(s);
      char *current  = s;

      while(*current && FUNC0((unsigned char)*current))
      {
         ++current;
         --len;
      }

      if(s != current)
         FUNC1(s, current, len + 1);
   }

   return s;
}