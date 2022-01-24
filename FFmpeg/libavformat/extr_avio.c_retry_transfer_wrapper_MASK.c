#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_5__ {int flags; scalar_t__ rw_timeout; int /*<<< orphan*/  interrupt_callback; } ;
typedef  TYPE_1__ URLContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int AVERROR_EXIT ; 
 int AVIO_FLAG_NONBLOCK ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  EIO ; 
 int FUNC1 (int,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC5(URLContext *h, uint8_t *buf,
                                         int size, int size_min,
                                         int (*transfer_func)(URLContext *h,
                                                              uint8_t *buf,
                                                              int size))
{
    int ret, len;
    int fast_retries = 5;
    int64_t wait_since = 0;

    len = 0;
    while (len < size_min) {
        if (FUNC4(&h->interrupt_callback))
            return AVERROR_EXIT;
        ret = transfer_func(h, buf + len, size - len);
        if (ret == FUNC0(EINTR))
            continue;
        if (h->flags & AVIO_FLAG_NONBLOCK)
            return ret;
        if (ret == FUNC0(EAGAIN)) {
            ret = 0;
            if (fast_retries) {
                fast_retries--;
            } else {
                if (h->rw_timeout) {
                    if (!wait_since)
                        wait_since = FUNC2();
                    else if (FUNC2() > wait_since + h->rw_timeout)
                        return FUNC0(EIO);
                }
                FUNC3(1000);
            }
        } else if (ret == AVERROR_EOF)
            return (len > 0) ? len : AVERROR_EOF;
        else if (ret < 0)
            return ret;
        if (ret) {
            fast_retries = FUNC1(fast_retries, 2);
            wait_since = 0;
        }
        len += ret;
    }
    return len;
}