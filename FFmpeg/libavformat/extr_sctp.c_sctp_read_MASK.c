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
struct sctp_sndrcvinfo {int /*<<< orphan*/  sinfo_stream; int /*<<< orphan*/  member_0; } ;
struct TYPE_4__ {int flags; TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_5__ {int /*<<< orphan*/  fd; scalar_t__ max_streams; } ;
typedef  TYPE_2__ SCTPContext ;

/* Variables and functions */
 int AVIO_FLAG_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sctp_sndrcvinfo*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(URLContext *h, uint8_t *buf, int size)
{
    SCTPContext *s = h->priv_data;
    int ret;

    if (!(h->flags & AVIO_FLAG_NONBLOCK)) {
        ret = FUNC4(s->fd, 0);
        if (ret < 0)
            return ret;
    }

    if (s->max_streams) {
        /*StreamId is introduced as a 2byte code into the stream*/
        struct sctp_sndrcvinfo info = { 0 };
        ret = FUNC2(s->fd, buf + 2, size - 2, NULL, 0, &info, 0);
        FUNC0(buf, info.sinfo_stream);
        ret = ret < 0 ? ret : ret + 2;
    } else
        ret = FUNC3(s->fd, buf, size, 0);

    return ret < 0 ? FUNC1() : ret;
}