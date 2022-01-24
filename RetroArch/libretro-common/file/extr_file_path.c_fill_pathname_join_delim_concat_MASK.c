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
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*,char const,size_t) ; 
 size_t FUNC1 (char*,char const*,size_t) ; 

size_t FUNC2(char *out_path, const char *dir,
      const char *path, const char delim, const char *concat,
      size_t size)
{
   FUNC0(out_path, dir, path, delim, size);
   return FUNC1(out_path, concat, size);
}