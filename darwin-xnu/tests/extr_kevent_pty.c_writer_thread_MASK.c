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
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  T_SETUPBEGIN ; 
 int /*<<< orphan*/  T_SETUPEND ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (int,char*,int) ; 
 scalar_t__ writing ; 

__attribute__((used)) static void *
FUNC5(void *arg)
{
	int fd = (int)arg;
	char c[4096];
	FUNC2(c, 'a', sizeof(c));

	T_SETUPBEGIN;
	T_QUIET;
	FUNC0(fd, 0, "writer thread received valid fd");
	T_SETUPEND;

	while (writing) {
		ssize_t wrsize = FUNC4(fd, c, sizeof(c));
		if (wrsize == -1) {
			if (errno == EINTR) {
				continue;
			} else {
				FUNC1("writer got an error (%s), shutting down", FUNC3(errno));
				return NULL;
			}
		}
	}

	return NULL;
}