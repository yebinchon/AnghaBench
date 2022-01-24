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
 char* FUNC0 (char const*) ; 
 size_t FUNC1 (char*,char const*,size_t) ; 

size_t FUNC2(char *out, const char *in_path, size_t size)
{
   const char     *ptr = FUNC0(in_path);

   if (!ptr)
      ptr = in_path;

   return FUNC1(out, ptr, size);
}