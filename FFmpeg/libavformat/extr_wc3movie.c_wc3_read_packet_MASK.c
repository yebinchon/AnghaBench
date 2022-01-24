#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  text ;
struct TYPE_10__ {int /*<<< orphan*/  pts; int /*<<< orphan*/  stream_index; int /*<<< orphan*/  size; int /*<<< orphan*/ * data; } ;
struct TYPE_9__ {int /*<<< orphan*/  pts; int /*<<< orphan*/  audio_stream_index; int /*<<< orphan*/  video_stream_index; TYPE_2__ vpkt; } ;
typedef  TYPE_1__ Wc3DemuxContext ;
struct TYPE_11__ {int /*<<< orphan*/ * pb; TYPE_1__* priv_data; } ;
typedef  TYPE_2__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
#define  AUDI_TAG 132 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
#define  BRCH_TAG 131 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  SEEK_CUR ; 
#define  SHOT_TAG 130 
#define  TEXT_TAG 129 
#define  VGA__TAG 128 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 unsigned char* FUNC2 (unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 unsigned int FUNC5 (unsigned char*,unsigned int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,unsigned char*,unsigned int) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(AVFormatContext *s,
                           AVPacket *pkt)
{
    Wc3DemuxContext *wc3 = s->priv_data;
    AVIOContext *pb = s->pb;
    unsigned int fourcc_tag;
    unsigned int size;
    int packet_read = 0;
    int ret = 0;
    unsigned char text[1024];

    while (!packet_read) {

        fourcc_tag = FUNC9(pb);
        /* chunk sizes are 16-bit aligned */
        size = (FUNC7(pb) + 1) & (~1);
        if (FUNC6(pb))
            return FUNC0(EIO);

        switch (fourcc_tag) {

        case BRCH_TAG:
            /* no-op */
            break;

        case SHOT_TAG:
            /* load up new palette */
            FUNC10(pb, -8, SEEK_CUR);
            FUNC1(pb, &wc3->vpkt, 8 + 4);
            break;

        case VGA__TAG:
            /* send out video chunk */
            FUNC10(pb, -8, SEEK_CUR);
            ret= FUNC1(pb, &wc3->vpkt, 8 + size);
            // ignore error if we have some data
            if (wc3->vpkt.size > 0)
                ret = 0;
            *pkt = wc3->vpkt;
            wc3->vpkt.data = NULL; wc3->vpkt.size = 0;
            pkt->stream_index = wc3->video_stream_index;
            pkt->pts = wc3->pts;
            packet_read = 1;
            break;

        case TEXT_TAG:
            /* subtitle chunk */
            if ((unsigned)size > sizeof(text) || (ret = FUNC8(pb, text, size)) != size)
                ret = FUNC0(EIO);
            else {
                int i = 0;
                FUNC4 (s, AV_LOG_DEBUG, "Subtitle time!\n");
                if (i >= size || FUNC5(&text[i + 1], size - i - 1) >= size - i - 1)
                    return AVERROR_INVALIDDATA;
                FUNC4 (s, AV_LOG_DEBUG, "  inglish: %s\n", &text[i + 1]);
                i += text[i] + 1;
                if (i >= size || FUNC5(&text[i + 1], size - i - 1) >= size - i - 1)
                    return AVERROR_INVALIDDATA;
                FUNC4 (s, AV_LOG_DEBUG, "  doytsch: %s\n", &text[i + 1]);
                i += text[i] + 1;
                if (i >= size || FUNC5(&text[i + 1], size - i - 1) >= size - i - 1)
                    return AVERROR_INVALIDDATA;
                FUNC4 (s, AV_LOG_DEBUG, "  fronsay: %s\n", &text[i + 1]);
            }
            break;

        case AUDI_TAG:
            /* send out audio chunk */
            ret= FUNC3(pb, pkt, size);
            pkt->stream_index = wc3->audio_stream_index;
            pkt->pts = wc3->pts;

            /* time to advance pts */
            wc3->pts++;

            packet_read = 1;
            break;

        default:
            FUNC4(s, AV_LOG_ERROR, "unrecognized WC3 chunk: %s\n",
                   FUNC2(fourcc_tag));
            ret = AVERROR_INVALIDDATA;
            packet_read = 1;
            break;
        }
    }

    return ret;
}