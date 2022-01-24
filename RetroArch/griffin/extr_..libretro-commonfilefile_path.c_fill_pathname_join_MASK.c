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
 size_t FUNC1 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 

size_t FUNC3(char *out_path,
      const char *dir, const char *path, size_t size)
{
   if (out_path != dir)
      FUNC2(out_path, dir, size);

   if (*out_path)
      FUNC0(out_path, size);

   return FUNC1(out_path, path, size);
}