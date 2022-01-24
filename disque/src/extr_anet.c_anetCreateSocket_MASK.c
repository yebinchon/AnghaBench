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
 int ANET_ERR ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(char *err, int domain) {
    int s;
    if ((s = FUNC3(domain, SOCK_STREAM, 0)) == -1) {
        FUNC0(err, "creating socket: %s", FUNC4(errno));
        return ANET_ERR;
    }

    /* Make sure connection-intensive things like the redis benchmark
     * will be able to close/open sockets a zillion of times */
    if (FUNC1(err,s) == ANET_ERR) {
        FUNC2(s);
        return ANET_ERR;
    }
    return s;
}