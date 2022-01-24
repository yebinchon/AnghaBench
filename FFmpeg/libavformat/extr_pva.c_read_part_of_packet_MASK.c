#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_6__ {int /*<<< orphan*/ * streams; TYPE_1__* priv_data; int /*<<< orphan*/ * pb; } ;
struct TYPE_5__ {int continue_pes; } ;
typedef  TYPE_1__ PVAContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVINDEX_KEYFRAME ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  EIO ; 
 int PVA_AUDIO_PAYLOAD ; 
 int PVA_MAGIC ; 
 int PVA_MAX_PAYLOAD_LENGTH ; 
 int PVA_VIDEO_PAYLOAD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC12(AVFormatContext *s, int64_t *pts,
                               int *len, int *strid, int read_packet) {
    AVIOContext *pb = s->pb;
    PVAContext *pvactx = s->priv_data;
    int syncword, streamid, reserved, flags, length, pts_flag;
    int64_t pva_pts = AV_NOPTS_VALUE, startpos;
    int ret;

recover:
    startpos = FUNC9(pb);

    syncword = FUNC4(pb);
    streamid = FUNC3(pb);
    FUNC3(pb);               /* counter not used */
    reserved = FUNC3(pb);
    flags    = FUNC3(pb);
    length   = FUNC4(pb);

    pts_flag = flags & 0x10;

    if (syncword != PVA_MAGIC) {
        FUNC11(s, AV_LOG_ERROR, "invalid syncword\n");
        return FUNC0(EIO);
    }
    if (streamid != PVA_VIDEO_PAYLOAD && streamid != PVA_AUDIO_PAYLOAD) {
        FUNC11(s, AV_LOG_ERROR, "invalid streamid\n");
        return FUNC0(EIO);
    }
    if (reserved != 0x55) {
        FUNC11(s, AV_LOG_WARNING, "expected reserved byte to be 0x55\n");
    }
    if (length > PVA_MAX_PAYLOAD_LENGTH) {
        FUNC11(s, AV_LOG_ERROR, "invalid payload length %u\n", length);
        return FUNC0(EIO);
    }

    if (streamid == PVA_VIDEO_PAYLOAD && pts_flag) {
        pva_pts = FUNC6(pb);
        length -= 4;
    } else if (streamid == PVA_AUDIO_PAYLOAD) {
        /* PVA Audio Packets either start with a signaled PES packet or
         * are a continuation of the previous PES packet. New PES packets
         * always start at the beginning of a PVA Packet, never somewhere in
         * the middle. */
        if (!pvactx->continue_pes) {
            int pes_signal, pes_header_data_length, pes_packet_length,
                pes_flags;
            unsigned char pes_header_data[256];

            pes_signal             = FUNC5(pb);
            FUNC3(pb);
            pes_packet_length      = FUNC4(pb);
            pes_flags              = FUNC4(pb);
            pes_header_data_length = FUNC3(pb);

            if (FUNC2(pb)) {
                return AVERROR_EOF;
            }

            if (pes_signal != 1 || pes_header_data_length == 0) {
                FUNC11(s, AV_LOG_WARNING, "expected non empty signaled PES packet, "
                                          "trying to recover\n");
                FUNC8(pb, length - 9);
                if (!read_packet)
                    return FUNC0(EIO);
                goto recover;
            }

            ret = FUNC7(pb, pes_header_data, pes_header_data_length);
            if (ret != pes_header_data_length)
                return ret < 0 ? ret : AVERROR_INVALIDDATA;
            length -= 9 + pes_header_data_length;

            pes_packet_length -= 3 + pes_header_data_length;

            pvactx->continue_pes = pes_packet_length;

            if (pes_flags & 0x80 && (pes_header_data[0] & 0xf0) == 0x20) {
                if (pes_header_data_length < 5) {
                    FUNC11(s, AV_LOG_ERROR, "header too short\n");
                    FUNC8(pb, length);
                    return AVERROR_INVALIDDATA;
                }
                pva_pts = FUNC10(pes_header_data);
            }
        }

        pvactx->continue_pes -= length;

        if (pvactx->continue_pes < 0) {
            FUNC11(s, AV_LOG_WARNING, "audio data corruption\n");
            pvactx->continue_pes = 0;
        }
    }

    if (pva_pts != AV_NOPTS_VALUE)
        FUNC1(s->streams[streamid-1], startpos, pva_pts, 0, 0, AVINDEX_KEYFRAME);

    *pts   = pva_pts;
    *len   = length;
    *strid = streamid;
    return 0;
}