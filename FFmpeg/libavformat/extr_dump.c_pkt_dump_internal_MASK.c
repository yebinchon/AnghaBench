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
struct TYPE_3__ {int stream_index; int flags; int duration; int dts; int pts; int size; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  AVRational ;
typedef  TYPE_1__ AVPacket ;

/* Variables and functions */
 int AV_NOPTS_VALUE ; 
 int AV_PKT_FLAG_KEY ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(void *avcl, FILE *f, int level, const AVPacket *pkt,
                              int dump_payload, AVRational time_base)
{
    FUNC0("stream #%d:\n", pkt->stream_index);
    FUNC0("  keyframe=%d\n", (pkt->flags & AV_PKT_FLAG_KEY) != 0);
    FUNC0("  duration=%0.3f\n", pkt->duration * FUNC1(time_base));
    /* DTS is _always_ valid after av_read_frame() */
    FUNC0("  dts=");
    if (pkt->dts == AV_NOPTS_VALUE)
        FUNC0("N/A");
    else
        FUNC0("%0.3f", pkt->dts * FUNC1(time_base));
    /* PTS may not be known if B-frames are present. */
    FUNC0("  pts=");
    if (pkt->pts == AV_NOPTS_VALUE)
        FUNC0("N/A");
    else
        FUNC0("%0.3f", pkt->pts * FUNC1(time_base));
    FUNC0("\n");
    FUNC0("  size=%d\n", pkt->size);
    if (dump_payload)
        FUNC2(avcl, f, level, pkt->data, pkt->size);
}