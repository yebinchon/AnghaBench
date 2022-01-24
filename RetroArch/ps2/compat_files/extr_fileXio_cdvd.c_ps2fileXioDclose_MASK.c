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
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 

int FUNC3(int fd)
{
   int ret = -19;
   if (FUNC2(fd)) {
      ret = FUNC0(fd);
   } else if (fd > 0) {
      ret = FUNC1(fd);
   }

   return ret;
}