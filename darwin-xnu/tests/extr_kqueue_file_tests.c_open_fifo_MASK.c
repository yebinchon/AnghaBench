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
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int fifo_read_fd ; 
 int FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  open_fifo_readside ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC4 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int 
FUNC6(const char *path, int *readfd, int *writefd) 
{
	pthread_t thread;
	int waitres;
	int res;
	int *tmpreadfd, tmpwritefd;
	
	fifo_read_fd = -1;
	res = FUNC3(&thread, 0, open_fifo_readside, (void*)path);
	if (res == 0) {
		if ((tmpwritefd = FUNC2(path, O_WRONLY)) == -1) {
			FUNC0("open(%s, O_WRONLY) failed: %d (%s)\n", path, errno, FUNC5(errno));
			return (-1);
		}
		waitres = FUNC4(thread, (void**) &tmpreadfd);
		
		FUNC1(tmpwritefd, F_SETFL, O_WRONLY | O_NONBLOCK);
		
		if ((waitres == 0) && (tmpwritefd >= 0) && (*tmpreadfd >= 0)) {
			*readfd = *tmpreadfd;
			*writefd = tmpwritefd;
		} else {
			res = -1;	
		}
	}
	
	return res;
}