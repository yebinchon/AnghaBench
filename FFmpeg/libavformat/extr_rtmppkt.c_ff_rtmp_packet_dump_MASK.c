#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {scalar_t__ type; int size; int /*<<< orphan*/ * data; int /*<<< orphan*/  extra; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  channel_id; } ;
typedef  TYPE_1__ RTMPPacket ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ RTMP_PT_AUDIO ; 
 scalar_t__ RTMP_PT_INVOKE ; 
 scalar_t__ RTMP_PT_METADATA ; 
 scalar_t__ RTMP_PT_NOTIFY ; 
 scalar_t__ RTMP_PT_SET_PEER_BW ; 
 scalar_t__ RTMP_PT_VIDEO ; 
 scalar_t__ RTMP_PT_WINDOW_ACK_SIZE ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5(void *ctx, RTMPPacket *p)
{
    FUNC2(ctx, AV_LOG_DEBUG, "RTMP packet type '%s'(%d) for channel %d, timestamp %d, extra field %d size %d\n",
           FUNC4(p->type), p->type, p->channel_id, p->timestamp, p->extra, p->size);
    if (p->type == RTMP_PT_INVOKE || p->type == RTMP_PT_NOTIFY) {
        uint8_t *src = p->data, *src_end = p->data + p->size;
        while (src < src_end) {
            int sz;
            FUNC1(ctx, src, src_end);
            sz = FUNC3(src, src_end);
            if (sz < 0)
                break;
            src += sz;
        }
    } else if (p->type == RTMP_PT_WINDOW_ACK_SIZE) {
        FUNC2(ctx, AV_LOG_DEBUG, "Window acknowledgement size = %d\n", FUNC0(p->data));
    } else if (p->type == RTMP_PT_SET_PEER_BW) {
        FUNC2(ctx, AV_LOG_DEBUG, "Set Peer BW = %d\n", FUNC0(p->data));
    } else if (p->type != RTMP_PT_AUDIO && p->type != RTMP_PT_VIDEO && p->type != RTMP_PT_METADATA) {
        int i;
        for (i = 0; i < p->size; i++)
            FUNC2(ctx, AV_LOG_DEBUG, " %02X", p->data[i]);
        FUNC2(ctx, AV_LOG_DEBUG, "\n");
    }
}