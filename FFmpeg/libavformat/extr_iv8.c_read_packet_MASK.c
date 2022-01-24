#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  pb; } ;
struct TYPE_9__ {int pts; int pos; scalar_t__ stream_index; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PKT_FLAG_CORRUPT ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s, AVPacket *pkt)
{
    int ret, size, pts, type, flags;
    int first_pkt      = 0;
    int frame_complete = 0;

    while (!frame_complete) {

        type  = FUNC4(s->pb); // 257 or 258
        size  = FUNC4(s->pb);
        flags = FUNC4(s->pb); //some flags, 0x80 indicates end of frame
                FUNC4(s->pb); //packet number
        pts   = FUNC5(s->pb);
                FUNC5(s->pb); //6A 13 E3 88

        frame_complete = flags & 0x80;

        size -= 12;
        if (size < 1)
            return -1;

        if (type == 258) {
            FUNC6(s->pb, size);
            frame_complete = 0;
            continue;
        }

        if (!first_pkt) {
            ret = FUNC1(s->pb, pkt, size);
            if (ret < 0)
                return ret;
            first_pkt = 1;
            pkt->pts  = pts;
            pkt->pos -= 16;
        } else {
            ret = FUNC0(s->pb, pkt, size);
            if (ret < 0) {
                FUNC2(s, AV_LOG_ERROR, "failed to grow packet\n");
                FUNC3(pkt);
                return ret;
            }
        }
        if (ret < size) {
            FUNC2(s, AV_LOG_ERROR, "Truncated packet! Read %d of %d bytes\n",
                   ret, size);
            pkt->flags |= AV_PKT_FLAG_CORRUPT;
            break;
        }
    }
    pkt->stream_index = 0;

    return 0;
}