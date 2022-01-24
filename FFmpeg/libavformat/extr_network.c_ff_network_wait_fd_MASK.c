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
struct pollfd {int fd; int events; int revents; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EAGAIN ; 
 int POLLERR ; 
 int POLLHUP ; 
 int POLLIN ; 
 int /*<<< orphan*/  POLLING_TIME ; 
 int POLLOUT ; 
 int FUNC1 () ; 
 int FUNC2 (struct pollfd*,int,int /*<<< orphan*/ ) ; 

int FUNC3(int fd, int write)
{
    int ev = write ? POLLOUT : POLLIN;
    struct pollfd p = { .fd = fd, .events = ev, .revents = 0 };
    int ret;
    ret = FUNC2(&p, 1, POLLING_TIME);
    return ret < 0 ? FUNC1() : p.revents & (ev | POLLERR | POLLHUP) ? 0 : FUNC0(EAGAIN);
}