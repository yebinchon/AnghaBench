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
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 

void FUNC5(char *out_path,
      const char *in_refpath, const char *in_path, size_t size)
{
   if (FUNC1(in_path))
   {
      FUNC4(out_path, in_path, size);
      return;
   }

   FUNC0(out_path, in_refpath, size);
   FUNC3(out_path, in_path, size);
   FUNC2(out_path, size, false);
}