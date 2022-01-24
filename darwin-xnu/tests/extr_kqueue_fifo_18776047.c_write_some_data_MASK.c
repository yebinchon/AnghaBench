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
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 (int,char*,size_t) ; 

int
FUNC3(int fd)
{
	int retval  = 0;
	int count   = 0;
	int len     = 5;
	char * data = "ABCDE";
	while (true) {
		errno  = 0;
		retval = (int)FUNC2(fd, data, (size_t)len);
		if (retval < 0) {
			if (errno == EAGAIN) {
				if (len == 1)
					return count;
				else
					len--;
			} else {
				FUNC0("write to fd %d of %s of len %d failed.", fd, data, len);
				FUNC1();
			}
		} else {
			count += retval;
		}
	}
}