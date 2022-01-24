#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int int64_t ;
typedef  int /*<<< orphan*/  FailingMuxerPacketData ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  int /*<<< orphan*/  AVFormatContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int AVERROR_BUG ; 
 int SLEEPTIME_50_MS ; 
 char* FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC9(AVFormatContext *oc, AVDictionary **opts,
                                   const FailingMuxerPacketData *data)
{
    int ret = 0, i;
    int64_t write_pkt_start, write_pkt_end, duration;
    AVPacket pkt;

    FUNC2(&pkt);

    ret = FUNC6(oc, opts);
    if (ret) {
        FUNC7(stderr, "Unexpected write_header failure: %s\n",
                FUNC0(ret));
        return ret;
    }

    write_pkt_start = FUNC1();
    for (i = 0; i < 6; i++ ) {
        ret = FUNC8(&pkt, data, i);
        if (ret < 0) {
            FUNC7(stderr, "Failed to prepare test packet: %s\n",
                    FUNC0(ret));
            goto fail;
        }
        ret = FUNC4(oc, &pkt);
        FUNC3(&pkt);
        if (ret < 0) {
            break;
        }
    }
    write_pkt_end = FUNC1();
    duration = write_pkt_end - write_pkt_start;
    if (duration > (SLEEPTIME_50_MS*6)/2) {
        FUNC7(stderr, "Writing packets to fifo muxer took too much time while testing"
                        "buffer overflow with drop_pkts_on_overflow was on.\n");
        ret = AVERROR_BUG;
        goto fail;
    }

    if (ret) {
        FUNC7(stderr, "Unexpected write_packet error: %s\n", FUNC0(ret));
        goto fail;
    }

    ret = FUNC5(oc);
    if (ret < 0)
        FUNC7(stderr, "Unexpected write_trailer error: %s\n", FUNC0(ret));

    return ret;
fail:
    FUNC5(oc);
    return ret;
}