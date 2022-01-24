#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct gxf_stream_info {int /*<<< orphan*/  fields_per_frame; } ;
struct TYPE_22__ {TYPE_2__** streams; struct gxf_stream_info* priv_data; TYPE_4__* pb; } ;
struct TYPE_21__ {int /*<<< orphan*/  eof_reached; } ;
struct TYPE_20__ {int stream_index; int dts; int /*<<< orphan*/  duration; } ;
struct TYPE_19__ {TYPE_1__* codecpar; } ;
struct TYPE_18__ {scalar_t__ codec_id; } ;
typedef  int /*<<< orphan*/  GXFPktType ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVIOContext ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 scalar_t__ AV_CODEC_ID_DVVIDEO ; 
 scalar_t__ AV_CODEC_ID_PCM_S16LE ; 
 scalar_t__ AV_CODEC_ID_PCM_S24LE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  PKT_FLT ; 
 int /*<<< orphan*/  PKT_MEDIA ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (TYPE_4__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int FUNC4 (TYPE_4__*) ; 
 int FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int) ; 
 int FUNC7 (TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int FUNC10(AVFormatContext *s, AVPacket *pkt) {
    AVIOContext *pb = s->pb;
    GXFPktType pkt_type;
    int pkt_len;
    struct gxf_stream_info *si = s->priv_data;

    while (!pb->eof_reached) {
        AVStream *st;
        int track_type, track_id, ret;
        int field_nr, field_info, skip = 0;
        int stream_index;
        if (!FUNC9(pb, &pkt_type, &pkt_len)) {
            if (!FUNC3(pb))
                FUNC2(s, AV_LOG_ERROR, "sync lost\n");
            return -1;
        }
        if (pkt_type == PKT_FLT) {
            FUNC8(s, pkt_len);
            continue;
        }
        if (pkt_type != PKT_MEDIA) {
            FUNC6(pb, pkt_len);
            continue;
        }
        if (pkt_len < 16) {
            FUNC2(s, AV_LOG_ERROR, "invalid media packet length\n");
            continue;
        }
        pkt_len -= 16;
        track_type = FUNC4(pb);
        track_id = FUNC4(pb);
        stream_index = FUNC7(s, track_id, track_type);
        if (stream_index < 0)
            return stream_index;
        st = s->streams[stream_index];
        field_nr = FUNC5(pb);
        field_info = FUNC5(pb);
        FUNC5(pb); // "timeline" field number
        FUNC4(pb); // flags
        FUNC4(pb); // reserved
        if (st->codecpar->codec_id == AV_CODEC_ID_PCM_S24LE ||
            st->codecpar->codec_id == AV_CODEC_ID_PCM_S16LE) {
            int first = field_info >> 16;
            int last  = field_info & 0xffff; // last is exclusive
            int bps = FUNC0(st->codecpar->codec_id)>>3;
            if (first <= last && last*bps <= pkt_len) {
                FUNC6(pb, first*bps);
                skip = pkt_len - last*bps;
                pkt_len = (last-first)*bps;
            } else
                FUNC2(s, AV_LOG_ERROR, "invalid first and last sample values\n");
        }
        ret = FUNC1(pb, pkt, pkt_len);
        if (skip)
            FUNC6(pb, skip);
        pkt->stream_index = stream_index;
        pkt->dts = field_nr;

        //set duration manually for DV or else lavf misdetects the frame rate
        if (st->codecpar->codec_id == AV_CODEC_ID_DVVIDEO)
            pkt->duration = si->fields_per_frame;

        return ret;
    }
    return AVERROR_EOF;
}