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
struct pollfd {int dummy; } ;
typedef  int /*<<< orphan*/  nfds_t ;
typedef  int /*<<< orphan*/  AVIOInterruptCB ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EXIT ; 
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 int POLLING_TIME ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 
 int FUNC3 (struct pollfd*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct pollfd *p, nfds_t nfds, int timeout,
                             AVIOInterruptCB *cb)
{
    int runs = timeout / POLLING_TIME;
    int ret = 0;

    do {
        if (FUNC1(cb))
            return AVERROR_EXIT;
        ret = FUNC3(p, nfds, POLLING_TIME);
        if (ret != 0) {
            if (ret < 0)
                ret = FUNC2();
            if (ret == FUNC0(EINTR))
                continue;
            break;
        }
    } while (timeout <= 0 || runs-- > 0);

    if (!ret)
        return FUNC0(ETIMEDOUT);
    return ret;
}