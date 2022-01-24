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
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 size_t FUNC2 (char*,char const*,size_t) ; 

size_t FUNC3(char *out_path,
      const char *dir,  const char *path,
      const char *last, const char *ext,
      size_t size)
{
   FUNC0(out_path, dir, path, size);
   if (*out_path)
      FUNC1(out_path, size);

   FUNC2(out_path, last, size);
   return FUNC2(out_path, ext, size);
}