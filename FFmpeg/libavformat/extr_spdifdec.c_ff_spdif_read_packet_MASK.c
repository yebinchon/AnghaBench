#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  enum IEC61937DataType { ____Placeholder_IEC61937DataType } IEC61937DataType ;
typedef  enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_21__ {int bit_rate; TYPE_3__** streams; int /*<<< orphan*/  nb_streams; int /*<<< orphan*/ * pb; } ;
struct TYPE_20__ {int pos; int size; scalar_t__ data; } ;
struct TYPE_19__ {TYPE_1__* codecpar; } ;
struct TYPE_18__ {TYPE_2__* codecpar; } ;
struct TYPE_17__ {int codec_id; int sample_rate; } ;
struct TYPE_16__ {int codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_4__ AVStream ;
typedef  TYPE_5__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_6__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int BURST_HEADER_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  SYNCWORD1 ; 
 int /*<<< orphan*/  SYNCWORD2 ; 
 int FUNC3 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 TYPE_4__* FUNC5 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC15 (TYPE_6__*,int,scalar_t__,int*,int*) ; 

int FUNC16(AVFormatContext *s, AVPacket *pkt)
{
    AVIOContext *pb = s->pb;
    enum IEC61937DataType data_type;
    enum AVCodecID codec_id;
    uint32_t state = 0;
    int pkt_size_bits, offset, ret;

    while (state != (FUNC1(SYNCWORD1) << 16 | FUNC1(SYNCWORD2))) {
        state = (state << 8) | FUNC7(pb);
        if (FUNC6(pb))
            return AVERROR_EOF;
    }

    data_type = FUNC9(pb);
    pkt_size_bits = FUNC9(pb);

    if (pkt_size_bits % 16)
        FUNC13(s, "Packet not ending at a 16-bit boundary");

    ret = FUNC3(pkt, FUNC2(pkt_size_bits, 16) >> 3);
    if (ret)
        return ret;

    pkt->pos = FUNC11(pb) - BURST_HEADER_SIZE;

    if (FUNC8(pb, pkt->data, pkt->size) < pkt->size) {
        FUNC4(pkt);
        return AVERROR_EOF;
    }
    FUNC14((uint16_t *)pkt->data, (uint16_t *)pkt->data, pkt->size >> 1);

    ret = FUNC15(s, data_type, pkt->data,
                                     &offset, &codec_id);
    if (ret) {
        FUNC4(pkt);
        return ret;
    }

    /* skip over the padding to the beginning of the next frame */
    FUNC10(pb, offset - pkt->size - BURST_HEADER_SIZE);

    if (!s->nb_streams) {
        /* first packet, create a stream */
        AVStream *st = FUNC5(s, NULL);
        if (!st) {
            FUNC4(pkt);
            return FUNC0(ENOMEM);
        }
        st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
        st->codecpar->codec_id = codec_id;
    } else if (codec_id != s->streams[0]->codecpar->codec_id) {
        FUNC12(s, "Codec change in IEC 61937");
        return AVERROR_PATCHWELCOME;
    }

    if (!s->bit_rate && s->streams[0]->codecpar->sample_rate)
        /* stream bitrate matches 16-bit stereo PCM bitrate for currently
           supported codecs */
        s->bit_rate = 2 * 16 * s->streams[0]->codecpar->sample_rate;

    return 0;
}