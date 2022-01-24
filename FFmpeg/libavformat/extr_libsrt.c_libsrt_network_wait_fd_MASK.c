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
typedef  int /*<<< orphan*/  URLContext ;
typedef  int /*<<< orphan*/  SRTSOCKET ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  POLLING_TIME ; 
 int SRT_EPOLL_IN ; 
 int SRT_EPOLL_OUT ; 
 scalar_t__ SRT_ETIMEOUT ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,int,int*) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int FUNC4 (int,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(URLContext *h, int eid, int fd, int write)
{
    int ret, len = 1;
    int modes = write ? SRT_EPOLL_OUT : SRT_EPOLL_IN;
    SRTSOCKET ready[1];

    if (FUNC2(eid, fd, &modes) < 0)
        return FUNC1(h);
    if (write) {
        ret = FUNC4(eid, 0, 0, ready, &len, POLLING_TIME, 0, 0, 0, 0);
    } else {
        ret = FUNC4(eid, ready, &len, 0, 0, POLLING_TIME, 0, 0, 0, 0);
    }
    if (ret < 0) {
        if (FUNC5(NULL) == SRT_ETIMEOUT)
            ret = FUNC0(EAGAIN);
        else
            ret = FUNC1(h);
    } else {
        ret = 0;
    }
    if (FUNC3(eid, fd) < 0)
        return FUNC1(h);
    return ret;
}