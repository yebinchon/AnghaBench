#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  URLContext ;
struct TYPE_9__ {int type; } ;
typedef  TYPE_1__ RTMPPacket ;
typedef  int /*<<< orphan*/  RTMPContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_TRACE ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
#define  RTMP_PT_AUDIO 137 
#define  RTMP_PT_BYTES_READ 136 
#define  RTMP_PT_CHUNK_SIZE 135 
#define  RTMP_PT_INVOKE 134 
#define  RTMP_PT_METADATA 133 
#define  RTMP_PT_NOTIFY 132 
#define  RTMP_PT_SET_PEER_BW 131 
#define  RTMP_PT_USER_CONTROL 130 
#define  RTMP_PT_VIDEO 129 
#define  RTMP_PT_WINDOW_ACK_SIZE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(URLContext *s, RTMPContext *rt, RTMPPacket *pkt)
{
    int ret;

#ifdef DEBUG
    ff_rtmp_packet_dump(s, pkt);
#endif

    switch (pkt->type) {
    case RTMP_PT_BYTES_READ:
        FUNC0(s, AV_LOG_TRACE, "received bytes read report\n");
        break;
    case RTMP_PT_CHUNK_SIZE:
        if ((ret = FUNC2(s, pkt)) < 0)
            return ret;
        break;
    case RTMP_PT_USER_CONTROL:
        if ((ret = FUNC5(s, pkt)) < 0)
            return ret;
        break;
    case RTMP_PT_SET_PEER_BW:
        if ((ret = FUNC4(s, pkt)) < 0)
            return ret;
        break;
    case RTMP_PT_WINDOW_ACK_SIZE:
        if ((ret = FUNC6(s, pkt)) < 0)
            return ret;
        break;
    case RTMP_PT_INVOKE:
        if ((ret = FUNC3(s, pkt)) < 0)
            return ret;
        break;
    case RTMP_PT_VIDEO:
    case RTMP_PT_AUDIO:
    case RTMP_PT_METADATA:
    case RTMP_PT_NOTIFY:
        /* Audio, Video and Metadata packets are parsed in get_packet() */
        break;
    default:
        FUNC0(s, AV_LOG_VERBOSE, "Unknown packet type received 0x%02X\n", pkt->type);
        break;
    }
    return 0;
}