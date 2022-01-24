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
 scalar_t__ FUNC0 (int,int) ; 
 char* FUNC1 (char const*) ; 

char *FUNC2(const char *src)
{
   char *result = FUNC1(src);
   if (!result)
      return (char*)FUNC0(1, 1);
   return result;
}