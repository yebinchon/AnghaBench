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
 scalar_t__ FUNC0 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 char* FUNC2 (char const*) ; 
 size_t FUNC3 (char const*) ; 

void FUNC4(char **dst, const char *s)
{
   size_t len1;
   char *src  = *dst;

   if (!src)
   {
      src     = FUNC2(s);
      *dst    = src;
      return;
   }

   if (!s)
      return;

   len1       = FUNC3(src);
   src        = (char*)FUNC0(src, len1 + FUNC3(s) + 1);

   if (!src)
      return;

   *dst       = src;
   FUNC1(src + len1, s);
}