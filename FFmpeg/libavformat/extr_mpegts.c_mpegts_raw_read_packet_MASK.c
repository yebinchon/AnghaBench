#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int int64_t ;
struct TYPE_12__ {int /*<<< orphan*/  pb; TYPE_1__* priv_data; } ;
struct TYPE_11__ {int pts; int duration; scalar_t__ stream_index; int /*<<< orphan*/  const* data; void* pos; } ;
struct TYPE_10__ {int raw_packet_size; int pcr_incr; int cur_pcr; scalar_t__ mpeg2ts_compute_pcr; } ;
typedef  TYPE_1__ MpegTSContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int MAX_PACKET_READAHEAD ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  TS_PACKET_SIZE ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC8 (int*,int*,int /*<<< orphan*/  const*) ; 
 int FUNC9 (TYPE_3__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const**) ; 

__attribute__((used)) static int FUNC10(AVFormatContext *s, AVPacket *pkt)
{
    MpegTSContext *ts = s->priv_data;
    int ret, i;
    int64_t pcr_h, next_pcr_h, pos;
    int pcr_l, next_pcr_l;
    uint8_t pcr_buf[12];
    const uint8_t *data;

    if (FUNC1(pkt, TS_PACKET_SIZE) < 0)
        return FUNC0(ENOMEM);
    ret = FUNC9(s, pkt->data, ts->raw_packet_size, &data);
    pkt->pos = FUNC5(s->pb);
    if (ret < 0) {
        FUNC2(pkt);
        return ret;
    }
    if (data != pkt->data)
        FUNC7(pkt->data, data, ts->raw_packet_size);
    FUNC6(s, ts->raw_packet_size);
    if (ts->mpeg2ts_compute_pcr) {
        /* compute exact PCR for each packet */
        if (FUNC8(&pcr_h, &pcr_l, pkt->data) == 0) {
            /* we read the next PCR (XXX: optimize it by using a bigger buffer */
            pos = FUNC5(s->pb);
            for (i = 0; i < MAX_PACKET_READAHEAD; i++) {
                FUNC4(s->pb, pos + i * ts->raw_packet_size, SEEK_SET);
                FUNC3(s->pb, pcr_buf, 12);
                if (FUNC8(&next_pcr_h, &next_pcr_l, pcr_buf) == 0) {
                    /* XXX: not precise enough */
                    ts->pcr_incr =
                        ((next_pcr_h - pcr_h) * 300 + (next_pcr_l - pcr_l)) /
                        (i + 1);
                    break;
                }
            }
            FUNC4(s->pb, pos, SEEK_SET);
            /* no next PCR found: we use previous increment */
            ts->cur_pcr = pcr_h * 300 + pcr_l;
        }
        pkt->pts      = ts->cur_pcr;
        pkt->duration = ts->pcr_incr;
        ts->cur_pcr  += ts->pcr_incr;
    }
    pkt->stream_index = 0;
    return 0;
}