#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * pb; } ;
struct TYPE_7__ {int stream_index; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PKT_FLAG_KEY ; 
 int /*<<< orphan*/  EIO ; 
#define  LMLM4_B_FRAME 131 
 unsigned int LMLM4_INVALID ; 
#define  LMLM4_I_FRAME 130 
 unsigned int LMLM4_MAX_PACKET_SIZE ; 
#define  LMLM4_MPEG1L2 129 
#define  LMLM4_P_FRAME 128 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s, AVPacket *pkt)
{
    AVIOContext *pb = s->pb;
    int ret;
    unsigned int frame_type, packet_size, padding, frame_size;

    FUNC3(pb);                       /* channel number */
    frame_type  = FUNC3(pb);
    packet_size = FUNC4(pb);
    padding     = -packet_size & 511;
    frame_size  = packet_size - 8;

    if (frame_type > LMLM4_MPEG1L2 || frame_type == LMLM4_INVALID) {
        FUNC2(s, AV_LOG_ERROR, "invalid or unsupported frame_type\n");
        return FUNC0(EIO);
    }
    if (packet_size > LMLM4_MAX_PACKET_SIZE || packet_size<=8) {
        FUNC2(s, AV_LOG_ERROR, "packet size %d is invalid\n", packet_size);
        return FUNC0(EIO);
    }

    if ((ret = FUNC1(pb, pkt, frame_size)) <= 0)
        return FUNC0(EIO);

    FUNC5(pb, padding);

    switch (frame_type) {
    case LMLM4_I_FRAME:
        pkt->flags = AV_PKT_FLAG_KEY;
    case LMLM4_P_FRAME:
    case LMLM4_B_FRAME:
        pkt->stream_index = 0;
        break;
    case LMLM4_MPEG1L2:
        pkt->stream_index = 1;
        break;
    }

    return ret;
}