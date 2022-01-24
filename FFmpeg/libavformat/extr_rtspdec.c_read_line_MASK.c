#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  rtsp_hd; } ;
typedef  TYPE_1__ RTSPState ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static inline int FUNC3(AVFormatContext *s, char *rbuf, const int rbufsize,
                            int *rbuflen)
{
    RTSPState *rt = s->priv_data;
    int idx       = 0;
    int ret       = 0;
    *rbuflen      = 0;

    do {
        ret = FUNC2(rt->rtsp_hd, rbuf + idx, 1);
        if (ret <= 0)
            return ret ? ret : AVERROR_EOF;
        if (rbuf[idx] == '\r') {
            /* Ignore */
        } else if (rbuf[idx] == '\n') {
            rbuf[idx] = '\0';
            *rbuflen  = idx;
            return 0;
        } else
            idx++;
    } while (idx < rbufsize);
    FUNC1(s, AV_LOG_ERROR, "Message too long\n");
    return FUNC0(EIO);
}