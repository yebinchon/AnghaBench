#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pollfd {int member_0; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_4__ {int /*<<< orphan*/  interrupt_callback; } ;
typedef  TYPE_1__ URLContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  POLLIN ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 () ; 
 int FUNC3 (struct pollfd*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int,int) ; 

int FUNC5(int fd, int timeout, URLContext *h)
{
    int ret;
    struct pollfd lp = { fd, POLLIN, 0 };

    ret = FUNC3(&lp, 1, timeout, &h->interrupt_callback);
    if (ret < 0)
        return ret;

    ret = FUNC0(fd, NULL, NULL);
    if (ret < 0)
        return FUNC2();
    if (FUNC4(ret, 1) < 0)
        FUNC1(h, AV_LOG_DEBUG, "ff_socket_nonblock failed\n");

    return ret;
}