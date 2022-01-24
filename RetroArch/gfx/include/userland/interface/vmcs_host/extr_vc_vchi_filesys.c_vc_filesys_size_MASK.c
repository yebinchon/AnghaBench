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
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  VC_O_RDONLY ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 

int FUNC3(const char *path)
{
   int fd;
   int end_pos = 0;
   int success = -1;
   if((fd = FUNC2(path, VC_O_RDONLY)) == 0)
   {
      end_pos = FUNC1(fd, 0, SEEK_END);
      success = FUNC0(fd);
      (void)success;
   }

   return end_pos;
}