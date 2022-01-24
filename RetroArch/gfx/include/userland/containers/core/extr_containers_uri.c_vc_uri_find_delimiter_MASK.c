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
 scalar_t__ FUNC0 (char const*,char) ; 

__attribute__((used)) static const char *FUNC1(const char *str, const char *delimiters)
{
   const char *ptr = str;
   char c;

   while ((c = *ptr) != 0)
   {
      if (FUNC0(delimiters, c) != 0)
         break;
      ptr++;
   }

   return ptr;
}