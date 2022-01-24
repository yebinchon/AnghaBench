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
 scalar_t__ FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static bool FUNC4( const char *src, char **p_dst )
{
   if (*p_dst)
      FUNC0(*p_dst);

   if (src)
   {
      size_t str_size = FUNC3(src) + 1;

      *p_dst = (char *)FUNC1(str_size);
      if (!*p_dst)
         return false;

      FUNC2(*p_dst, src, str_size);
   } else
      *p_dst = NULL;

   return true;
}