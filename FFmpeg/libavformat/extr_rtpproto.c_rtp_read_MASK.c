#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct pollfd {int member_1; int revents; int /*<<< orphan*/  fd; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_0; } ;
typedef  int socklen_t ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  interrupt_callback; TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_5__ {int last_rtp_source_len; int last_rtcp_source_len; int /*<<< orphan*/  filters; struct sockaddr_storage last_rtcp_source; struct sockaddr_storage last_rtp_source; int /*<<< orphan*/  rtcp_fd; int /*<<< orphan*/  rtp_fd; } ;
typedef  TYPE_2__ RTPContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EXIT ; 
 int AVIO_FLAG_NONBLOCK ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  EIO ; 
 int POLLIN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct sockaddr_storage*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (struct pollfd*,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 

__attribute__((used)) static int FUNC6(URLContext *h, uint8_t *buf, int size)
{
    RTPContext *s = h->priv_data;
    int len, n, i;
    struct pollfd p[2] = {{s->rtp_fd, POLLIN, 0}, {s->rtcp_fd, POLLIN, 0}};
    int poll_delay = h->flags & AVIO_FLAG_NONBLOCK ? 0 : 100;
    struct sockaddr_storage *addrs[2] = { &s->last_rtp_source, &s->last_rtcp_source };
    socklen_t *addr_lens[2] = { &s->last_rtp_source_len, &s->last_rtcp_source_len };

    for(;;) {
        if (FUNC1(&h->interrupt_callback))
            return AVERROR_EXIT;
        n = FUNC4(p, 2, poll_delay);
        if (n > 0) {
            /* first try RTCP, then RTP */
            for (i = 1; i >= 0; i--) {
                if (!(p[i].revents & POLLIN))
                    continue;
                *addr_lens[i] = sizeof(*addrs[i]);
                len = FUNC5(p[i].fd, buf, size, 0,
                                (struct sockaddr *)addrs[i], addr_lens[i]);
                if (len < 0) {
                    if (FUNC3() == FUNC0(EAGAIN) ||
                        FUNC3() == FUNC0(EINTR))
                        continue;
                    return FUNC0(EIO);
                }
                if (FUNC2(addrs[i], &s->filters))
                    continue;
                return len;
            }
        } else if (n < 0) {
            if (FUNC3() == FUNC0(EINTR))
                continue;
            return FUNC0(EIO);
        }
        if (h->flags & AVIO_FLAG_NONBLOCK)
            return FUNC0(EAGAIN);
    }
}