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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 scalar_t__ EBADF ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  T_SETUPBEGIN ; 
 int /*<<< orphan*/  T_SETUPEND ; 
 scalar_t__ errno ; 
 int FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void *
FUNC5(void *arg)
{
	int fd = (int)arg;
	char c;

	T_SETUPBEGIN;
	T_QUIET;
	FUNC0(fd, 0, "reader thread received valid fd");
	T_SETUPEND;

	for (;;) {
		ssize_t rdsize = FUNC3(fd, &c, sizeof(c));
		if (rdsize == -1) {
			if (errno == EINTR) {
				continue;
			} else if (errno == EBADF) {
				FUNC2("reader got an error (%s), shutting down", FUNC4(errno));
				return NULL;
			} else {
				FUNC1(rdsize, "read on PTY");
			}
		} else if (rdsize == 0) {
			return NULL;
		}
	}

	return NULL;
}