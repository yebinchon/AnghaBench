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
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int FUNC0 (int,int /*<<< orphan*/ ,...) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int,char*,int) ; 
 int rjobfd ; 
 char* FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,char**,int) ; 
 int wjobfd ; 

__attribute__((used)) static int
FUNC5()
{
    int n = 1;
    char c, *s;
    char *v = FUNC1("MAKEFLAGS");
    if (v == NULL)
        return n;
    if ((s = FUNC3(v, " --jobserver-fds="))) {
        rjobfd = (int)FUNC4(s+17, &s, 10);  /* skip " --jobserver-fds=" */
        wjobfd = (int)FUNC4(s+1, NULL, 10); /* skip comma */
    }
    if (rjobfd >= 0) {
        FUNC0(rjobfd, F_SETFL, FUNC0(rjobfd, F_GETFL)|O_NONBLOCK);
        while (FUNC2(rjobfd, &c, 1) > 0) {
            n++;
        }
    }
    return n;
}