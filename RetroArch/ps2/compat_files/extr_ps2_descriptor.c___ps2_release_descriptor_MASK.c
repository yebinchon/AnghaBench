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
 int MAX_OPEN_FILES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** __ps2_fdmap ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(int fd)
{
   int res = -1;

   if (FUNC3(fd) && FUNC0(__ps2_fdmap[MAX_OPEN_FILES - fd]) >= 0)
   {
      FUNC1();
      /* Correct fd value */
      fd = MAX_OPEN_FILES - fd;
      __ps2_fdmap[fd] = NULL;
      res = 0;
      FUNC2();
   }

   return res;
}