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
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 char* FUNC1 (char const*) ; 
 size_t FUNC2 (char*,char const*,size_t) ; 

size_t FUNC3(char *in_dir, const char *in_basename,
      const char *replace, size_t size)
{
   const char *base = NULL;

   FUNC0(in_dir, size);
   base = FUNC1(in_basename);
   FUNC2(in_dir, base, size);
   return FUNC2(in_dir, replace, size);
}