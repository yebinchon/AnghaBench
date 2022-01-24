#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_10__ {TYPE_2__* priv_data; } ;
struct TYPE_9__ {scalar_t__ state; scalar_t__ transport; int nb_rtsp_streams; TYPE_1__** rtsp_streams; int /*<<< orphan*/  rtsp_hd; } ;
struct TYPE_8__ {int interleaved_min; int interleaved_max; } ;
typedef  TYPE_1__ RTSPStream ;
typedef  TYPE_2__ RTSPState ;
typedef  int /*<<< orphan*/  RTSPMessageHeader ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_TRACE ; 
 int FUNC0 (int*) ; 
 scalar_t__ RTSP_STATE_STREAMING ; 
 scalar_t__ RTSP_TRANSPORT_RDT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (int*,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int*,int) ; 

int FUNC5(AVFormatContext *s, RTSPStream **prtsp_st,
                            uint8_t *buf, int buf_size)
{
    RTSPState *rt = s->priv_data;
    int id, len, i, ret;
    RTSPStream *rtsp_st;

    FUNC1(s, AV_LOG_TRACE, "tcp_read_packet:\n");
redo:
    for (;;) {
        RTSPMessageHeader reply;

        ret = FUNC3(s, &reply, NULL, 1, NULL);
        if (ret < 0)
            return ret;
        if (ret == 1) /* received '$' */
            break;
        /* XXX: parse message */
        if (rt->state != RTSP_STATE_STREAMING)
            return 0;
    }
    ret = FUNC4(rt->rtsp_hd, buf, 3);
    if (ret != 3)
        return -1;
    id  = buf[0];
    len = FUNC0(buf + 1);
    FUNC1(s, AV_LOG_TRACE, "id=%d len=%d\n", id, len);
    if (len > buf_size || len < 8)
        goto redo;
    /* get the data */
    ret = FUNC4(rt->rtsp_hd, buf, len);
    if (ret != len)
        return -1;
    if (rt->transport == RTSP_TRANSPORT_RDT &&
        FUNC2(buf, len, &id, NULL, NULL, NULL, NULL) < 0)
        return -1;

    /* find the matching stream */
    for (i = 0; i < rt->nb_rtsp_streams; i++) {
        rtsp_st = rt->rtsp_streams[i];
        if (id >= rtsp_st->interleaved_min &&
            id <= rtsp_st->interleaved_max)
            goto found;
    }
    goto redo;
found:
    *prtsp_st = rtsp_st;
    return len;
}