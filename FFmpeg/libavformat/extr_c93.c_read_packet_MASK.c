#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
struct TYPE_21__ {TYPE_2__* priv_data; int /*<<< orphan*/ * pb; } ;
struct TYPE_20__ {int stream_index; int size; int /*<<< orphan*/ * data; int /*<<< orphan*/  flags; } ;
struct TYPE_19__ {size_t frames; int index; int /*<<< orphan*/  length; } ;
struct TYPE_18__ {size_t current_block; int next_pkt_is_audio; size_t current_frame; int* frame_offsets; TYPE_10__* audio; TYPE_3__* block_records; } ;
struct TYPE_17__ {int /*<<< orphan*/  codec_type; } ;
struct TYPE_16__ {TYPE_1__* codecpar; } ;
typedef  TYPE_2__ C93DemuxContext ;
typedef  TYPE_3__ C93BlockRecord ;
typedef  TYPE_4__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PKT_FLAG_KEY ; 
 int /*<<< orphan*/  C93_FIRST_FRAME ; 
 int /*<<< orphan*/  C93_HAS_PALETTE ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 TYPE_10__* FUNC4 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (TYPE_5__*,TYPE_4__*,TYPE_10__*,int) ; 

__attribute__((used)) static int FUNC11(AVFormatContext *s, AVPacket *pkt)
{
    AVIOContext *pb = s->pb;
    C93DemuxContext *c93 = s->priv_data;
    C93BlockRecord *br = &c93->block_records[c93->current_block];
    int datasize;
    int ret, i;

    if (c93->next_pkt_is_audio) {
        c93->current_frame++;
        c93->next_pkt_is_audio = 0;
        datasize = FUNC6(pb);
        if (datasize > 42) {
            if (!c93->audio) {
                c93->audio = FUNC4(s, NULL);
                if (!c93->audio)
                    return FUNC0(ENOMEM);
                c93->audio->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
            }
            FUNC9(pb, 26); /* VOC header */
            ret = FUNC10(s, pkt, c93->audio, datasize - 26);
            if (ret > 0) {
                pkt->stream_index = 1;
                pkt->flags |= AV_PKT_FLAG_KEY;
                return ret;
            }
        }
    }
    if (c93->current_frame >= br->frames) {
        if (c93->current_block >= 511 || !br[1].length)
            return AVERROR_EOF;
        br++;
        c93->current_block++;
        c93->current_frame = 0;
    }

    if (c93->current_frame == 0) {
        FUNC8(pb, br->index * 2048, SEEK_SET);
        for (i = 0; i < 32; i++) {
            c93->frame_offsets[i] = FUNC7(pb);
        }
    }

    FUNC8(pb,br->index * 2048 +
            c93->frame_offsets[c93->current_frame], SEEK_SET);
    datasize = FUNC6(pb); /* video frame size */

    ret = FUNC2(pkt, datasize + 768 + 1);
    if (ret < 0)
        return ret;
    pkt->data[0] = 0;
    pkt->size = datasize + 1;

    ret = FUNC5(pb, pkt->data + 1, datasize);
    if (ret < datasize) {
        ret = FUNC0(EIO);
        goto fail;
    }

    datasize = FUNC6(pb); /* palette size */
    if (datasize) {
        if (datasize != 768) {
            FUNC1(s, AV_LOG_ERROR, "invalid palette size %u\n", datasize);
            ret = AVERROR_INVALIDDATA;
            goto fail;
        }
        pkt->data[0] |= C93_HAS_PALETTE;
        ret = FUNC5(pb, pkt->data + pkt->size, datasize);
        if (ret < datasize) {
            ret = FUNC0(EIO);
            goto fail;
        }
        pkt->size += 768;
    }
    pkt->stream_index = 0;
    c93->next_pkt_is_audio = 1;

    /* only the first frame is guaranteed to not reference previous frames */
    if (c93->current_block == 0 && c93->current_frame == 0) {
        pkt->flags |= AV_PKT_FLAG_KEY;
        pkt->data[0] |= C93_FIRST_FRAME;
    }
    return 0;

    fail:
    FUNC3(pkt);
    return ret;
}