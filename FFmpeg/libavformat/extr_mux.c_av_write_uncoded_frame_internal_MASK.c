#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_11__* oformat; } ;
struct TYPE_14__ {int /*<<< orphan*/  pkt_duration; int /*<<< orphan*/  pts; } ;
struct TYPE_13__ {int stream_index; int /*<<< orphan*/  flags; int /*<<< orphan*/  duration; int /*<<< orphan*/  dts; int /*<<< orphan*/  pts; int /*<<< orphan*/  size; void* data; } ;
struct TYPE_12__ {int /*<<< orphan*/  write_uncoded_frame; } ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_PKT_FLAG_UNCODED_FRAME ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  UNCODED_FRAME_PACKET_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_3__*,TYPE_1__*) ; 
 int FUNC4 (TYPE_3__*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s, int stream_index,
                                           AVFrame *frame, int interleaved)
{
    AVPacket pkt, *pktp;

    FUNC1(s->oformat);
    if (!s->oformat->write_uncoded_frame)
        return FUNC0(ENOSYS);

    if (!frame) {
        pktp = NULL;
    } else {
        pktp = &pkt;
        FUNC2(&pkt);
        pkt.data = (void *)frame;
        pkt.size         = UNCODED_FRAME_PACKET_SIZE;
        pkt.pts          =
        pkt.dts          = frame->pts;
        pkt.duration     = frame->pkt_duration;
        pkt.stream_index = stream_index;
        pkt.flags |= AV_PKT_FLAG_UNCODED_FRAME;
    }

    return interleaved ? FUNC3(s, pktp) :
                         FUNC4(s, pktp);
}