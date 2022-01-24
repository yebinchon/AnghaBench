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
typedef  int /*<<< orphan*/  iox_dirent_t ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 

int FUNC3(int fd, iox_dirent_t *dirent)
{
   if (FUNC2(fd)) {
      return FUNC0(fd, dirent);
   } else {
      return FUNC1(fd, dirent);
   }
}