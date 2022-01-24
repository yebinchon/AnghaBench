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
typedef  char uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  scalar_t__ int64_t ;
typedef  int int32_t ;
struct TYPE_3__ {int max_packet_size; scalar_t__ prev_rtp_ts; scalar_t__ cur_rtp_ts_unwrapped; int /*<<< orphan*/  sample_queue; } ;
typedef  TYPE_1__ MOVTrack ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 scalar_t__ AV_NOPTS_VALUE ; 
 int FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(AVIOContext *out, const uint8_t *data,
                              int size, MOVTrack *trk, int64_t *dts)
{
    int64_t curpos;
    int64_t count_pos, entries_pos;
    int count = 0, entries;

    count_pos = FUNC4(out);
    /* RTPsample header */
    FUNC5(out, 0); /* packet count */
    FUNC5(out, 0); /* reserved */

    while (size > 4) {
        uint32_t packet_len = FUNC1(data);
        uint16_t seq;
        uint32_t ts;
        int32_t  ts_diff;

        data += 4;
        size -= 4;
        if (packet_len > size || packet_len <= 12)
            break;
        if (FUNC2(data[1])) {
            /* RTCP packet, just skip */
            data += packet_len;
            size -= packet_len;
            continue;
        }

        if (packet_len > trk->max_packet_size)
            trk->max_packet_size = packet_len;

        seq = FUNC0(&data[2]);
        ts  = FUNC1(&data[4]);

        if (trk->prev_rtp_ts == 0)
            trk->prev_rtp_ts = ts;
        /* Unwrap the 32-bit RTP timestamp that wraps around often
         * into a not (as often) wrapping 64-bit timestamp. */
        ts_diff = ts - trk->prev_rtp_ts;
        if (ts_diff > 0) {
            trk->cur_rtp_ts_unwrapped += ts_diff;
            trk->prev_rtp_ts = ts;
            ts_diff = 0;
        }
        if (*dts == AV_NOPTS_VALUE)
            *dts = trk->cur_rtp_ts_unwrapped;

        count++;
        /* RTPpacket header */
        FUNC6(out, 0); /* relative_time */
        FUNC7(out, data, 2); /* RTP header */
        FUNC5(out, seq); /* RTPsequenceseed */
        FUNC5(out, ts_diff ? 4 : 0); /* reserved + flags (extra_flag) */
        entries_pos = FUNC4(out);
        FUNC5(out, 0); /* entry count */
        if (ts_diff) { /* if extra_flag is set */
            FUNC6(out, 16); /* extra_information_length */
            FUNC6(out, 12); /* rtpoffsetTLV box */
            FUNC7(out, "rtpo", 4);
            FUNC6(out, ts_diff);
        }

        data += 12;
        size -= 12;
        packet_len -= 12;

        entries = 0;
        /* Write one or more constructors describing the payload data */
        FUNC8(data, packet_len, out, &entries, &trk->sample_queue);
        data += packet_len;
        size -= packet_len;

        curpos = FUNC4(out);
        FUNC3(out, entries_pos, SEEK_SET);
        FUNC5(out, entries);
        FUNC3(out, curpos, SEEK_SET);
    }

    curpos = FUNC4(out);
    FUNC3(out, count_pos, SEEK_SET);
    FUNC5(out, count);
    FUNC3(out, curpos, SEEK_SET);
    return count;
}