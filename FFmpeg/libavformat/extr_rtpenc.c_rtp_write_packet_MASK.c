#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_5__ ;
typedef  struct TYPE_32__   TYPE_4__ ;
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_33__ {TYPE_3__** streams; TYPE_2__* priv_data; } ;
struct TYPE_32__ {int size; int stream_index; int /*<<< orphan*/  data; scalar_t__ pts; } ;
struct TYPE_31__ {TYPE_1__* codecpar; } ;
struct TYPE_30__ {int octet_count; int last_octet_count; int last_rtcp_ntp_time; int flags; int max_payload_size; scalar_t__ base_timestamp; scalar_t__ cur_timestamp; scalar_t__ first_packet; } ;
struct TYPE_29__ {int codec_id; int channels; int bits_per_coded_sample; int /*<<< orphan*/  field_order; } ;
typedef  TYPE_2__ RTPMuxContext ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVPacket ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  AV_CODEC_ID_AAC 160 
#define  AV_CODEC_ID_ADPCM_G722 159 
#define  AV_CODEC_ID_ADPCM_G726 158 
#define  AV_CODEC_ID_ADPCM_G726LE 157 
#define  AV_CODEC_ID_AMR_NB 156 
#define  AV_CODEC_ID_AMR_WB 155 
#define  AV_CODEC_ID_DIRAC 154 
#define  AV_CODEC_ID_H261 153 
#define  AV_CODEC_ID_H263 152 
#define  AV_CODEC_ID_H263P 151 
#define  AV_CODEC_ID_H264 150 
#define  AV_CODEC_ID_HEVC 149 
#define  AV_CODEC_ID_ILBC 148 
#define  AV_CODEC_ID_MJPEG 147 
#define  AV_CODEC_ID_MP2 146 
#define  AV_CODEC_ID_MP3 145 
#define  AV_CODEC_ID_MPEG1VIDEO 144 
#define  AV_CODEC_ID_MPEG2TS 143 
#define  AV_CODEC_ID_MPEG2VIDEO 142 
#define  AV_CODEC_ID_OPUS 141 
#define  AV_CODEC_ID_PCM_ALAW 140 
#define  AV_CODEC_ID_PCM_MULAW 139 
#define  AV_CODEC_ID_PCM_S16BE 138 
#define  AV_CODEC_ID_PCM_S16LE 137 
#define  AV_CODEC_ID_PCM_S24BE 136 
#define  AV_CODEC_ID_PCM_S8 135 
#define  AV_CODEC_ID_PCM_U16BE 134 
#define  AV_CODEC_ID_PCM_U16LE 133 
#define  AV_CODEC_ID_PCM_U8 132 
#define  AV_CODEC_ID_THEORA 131 
#define  AV_CODEC_ID_VORBIS 130 
#define  AV_CODEC_ID_VP8 129 
#define  AV_CODEC_ID_VP9 128 
 int /*<<< orphan*/  AV_FIELD_PROGRESSIVE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_TRACE ; 
 int /*<<< orphan*/  AV_PKT_DATA_H263_MB_INFO ; 
 int /*<<< orphan*/  EINVAL ; 
 int FF_RTP_FLAG_MP4A_LATM ; 
 int FF_RTP_FLAG_RFC2190 ; 
 int FF_RTP_FLAG_SKIP_RTCP ; 
 int RTCP_SR_SIZE ; 
 int RTCP_TX_RATIO_DEN ; 
 int RTCP_TX_RATIO_NUM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int FUNC22 (TYPE_5__*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC23(AVFormatContext *s1, AVPacket *pkt)
{
    RTPMuxContext *s = s1->priv_data;
    AVStream *st = s1->streams[0];
    int rtcp_bytes;
    int size= pkt->size;

    FUNC1(s1, AV_LOG_TRACE, "%d: write len=%d\n", pkt->stream_index, size);

    rtcp_bytes = ((s->octet_count - s->last_octet_count) * RTCP_TX_RATIO_NUM) /
        RTCP_TX_RATIO_DEN;
    if ((s->first_packet || ((rtcp_bytes >= RTCP_SR_SIZE) &&
                            (FUNC3() - s->last_rtcp_ntp_time > 5000000))) &&
        !(s->flags & FF_RTP_FLAG_SKIP_RTCP)) {
        FUNC17(s1, FUNC3(), 0);
        s->last_octet_count = s->octet_count;
        s->first_packet = 0;
    }
    s->cur_timestamp = s->base_timestamp + pkt->pts;

    switch(st->codecpar->codec_id) {
    case AV_CODEC_ID_PCM_MULAW:
    case AV_CODEC_ID_PCM_ALAW:
    case AV_CODEC_ID_PCM_U8:
    case AV_CODEC_ID_PCM_S8:
        return FUNC22(s1, pkt->data, size, 8 * st->codecpar->channels);
    case AV_CODEC_ID_PCM_U16BE:
    case AV_CODEC_ID_PCM_U16LE:
    case AV_CODEC_ID_PCM_S16BE:
    case AV_CODEC_ID_PCM_S16LE:
        return FUNC22(s1, pkt->data, size, 16 * st->codecpar->channels);
    case AV_CODEC_ID_PCM_S24BE:
        return FUNC22(s1, pkt->data, size, 24 * st->codecpar->channels);
    case AV_CODEC_ID_ADPCM_G722:
        /* The actual sample size is half a byte per sample, but since the
         * stream clock rate is 8000 Hz while the sample rate is 16000 Hz,
         * the correct parameter for send_samples_bits is 8 bits per stream
         * clock. */
        return FUNC22(s1, pkt->data, size, 8 * st->codecpar->channels);
    case AV_CODEC_ID_ADPCM_G726:
    case AV_CODEC_ID_ADPCM_G726LE:
        return FUNC22(s1, pkt->data, size,
                                st->codecpar->bits_per_coded_sample * st->codecpar->channels);
    case AV_CODEC_ID_MP2:
    case AV_CODEC_ID_MP3:
        FUNC19(s1, pkt->data, size);
        break;
    case AV_CODEC_ID_MPEG1VIDEO:
    case AV_CODEC_ID_MPEG2VIDEO:
        FUNC12(s1, pkt->data, size);
        break;
    case AV_CODEC_ID_AAC:
        if (s->flags & FF_RTP_FLAG_MP4A_LATM)
            FUNC11(s1, pkt->data, size);
        else
            FUNC4(s1, pkt->data, size);
        break;
    case AV_CODEC_ID_AMR_NB:
    case AV_CODEC_ID_AMR_WB:
        FUNC5(s1, pkt->data, size);
        break;
    case AV_CODEC_ID_MPEG2TS:
        FUNC20(s1, pkt->data, size);
        break;
    case AV_CODEC_ID_DIRAC:
        FUNC13(s1, pkt->data, size, st->codecpar->field_order != AV_FIELD_PROGRESSIVE ? 1 : 0);
        break;
    case AV_CODEC_ID_H264:
        FUNC9(s1, pkt->data, size);
        break;
    case AV_CODEC_ID_H261:
        FUNC6(s1, pkt->data, size);
        break;
    case AV_CODEC_ID_H263:
        if (s->flags & FF_RTP_FLAG_RFC2190) {
            int mb_info_size = 0;
            const uint8_t *mb_info =
                FUNC2(pkt, AV_PKT_DATA_H263_MB_INFO,
                                        &mb_info_size);
            FUNC8(s1, pkt->data, size, mb_info, mb_info_size);
            break;
        }
        /* Fallthrough */
    case AV_CODEC_ID_H263P:
        FUNC7(s1, pkt->data, size);
        break;
    case AV_CODEC_ID_HEVC:
        FUNC9(s1, pkt->data, size);
        break;
    case AV_CODEC_ID_VORBIS:
    case AV_CODEC_ID_THEORA:
        FUNC16(s1, pkt->data, size);
        break;
    case AV_CODEC_ID_VP8:
        FUNC14(s1, pkt->data, size);
        break;
    case AV_CODEC_ID_VP9:
        FUNC15(s1, pkt->data, size);
        break;
    case AV_CODEC_ID_ILBC:
        FUNC18(s1, pkt->data, size);
        break;
    case AV_CODEC_ID_MJPEG:
        FUNC10(s1, pkt->data, size);
        break;
    case AV_CODEC_ID_OPUS:
        if (size > s->max_payload_size) {
            FUNC1(s1, AV_LOG_ERROR,
                   "Packet size %d too large for max RTP payload size %d\n",
                   size, s->max_payload_size);
            return FUNC0(EINVAL);
        }
        /* Intentional fallthrough */
    default:
        /* better than nothing : send the codec raw data */
        FUNC21(s1, pkt->data, size);
        break;
    }
    return 0;
}