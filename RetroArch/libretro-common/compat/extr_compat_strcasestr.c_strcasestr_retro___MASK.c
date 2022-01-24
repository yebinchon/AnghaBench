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
 int /*<<< orphan*/  FUNC0 (char const*,char const*,size_t) ; 
 size_t FUNC1 (char const*) ; 

char *FUNC2(const char *haystack, const char *needle)
{
   size_t i, search_off;
   size_t hay_len    = FUNC1(haystack);
   size_t needle_len = FUNC1(needle);

   if (needle_len > hay_len)
      return NULL;

   search_off = hay_len - needle_len;
   for (i = 0; i <= search_off; i++)
      if (!FUNC0(haystack + i, needle, needle_len))
         return (char*)haystack + i;

   return NULL;
}