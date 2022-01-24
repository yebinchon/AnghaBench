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
 int READ_BUFFER_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 (int,char*,int) ; 

int
FUNC3(int fd)
{
	int retval, count = 0;
	char databuffer[READ_BUFFER_LEN];
	while (true) {
		errno  = 0;
		retval = (int)FUNC2(fd, databuffer, READ_BUFFER_LEN);
		if (retval < 0) {
			if (errno == EAGAIN) {
				return count;
			} else {
				FUNC0("read from fd %d failed.", fd);
				FUNC1();
			}
		}
		count += retval;
	}
}