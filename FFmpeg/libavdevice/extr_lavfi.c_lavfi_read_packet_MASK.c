#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_30__ {int len; int /*<<< orphan*/  str; } ;
struct TYPE_29__ {int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;
struct TYPE_28__ {TYPE_1__* priv_data; } ;
struct TYPE_27__ {int channels; int nb_samples; int /*<<< orphan*/  pkt_pos; int /*<<< orphan*/  pts; int /*<<< orphan*/ * metadata; int /*<<< orphan*/ * data; int /*<<< orphan*/  format; int /*<<< orphan*/  height; scalar_t__ width; int /*<<< orphan*/  linesize; } ;
struct TYPE_26__ {int size; int stream_index; int /*<<< orphan*/  pos; int /*<<< orphan*/  pts; int /*<<< orphan*/ * data; } ;
struct TYPE_25__ {int nb_sinks; int* sink_eof; int* sink_stream_map; int /*<<< orphan*/ * sinks; TYPE_2__ subcc_packet; TYPE_3__* decoded_frame; } ;
typedef  TYPE_1__ LavfiContext ;
typedef  int /*<<< orphan*/  AVRational ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFormatContext ;
typedef  TYPE_5__ AVDictionaryEntry ;
typedef  int /*<<< orphan*/  AVDictionary ;
typedef  TYPE_6__ AVBPrint ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  AV_BPRINT_SIZE_UNLIMITED ; 
 int /*<<< orphan*/  AV_BUFFERSINK_FLAG_PEEK ; 
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 int /*<<< orphan*/  AV_PKT_DATA_STRINGS_METADATA ; 
 int AV_ROUND_NEAR_INF ; 
 int AV_ROUND_PASS_MINMAX ; 
 int /*<<< orphan*/  AV_TIME_BASE_Q ; 
 double DBL_MAX ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,char,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC8 (int /*<<< orphan*/ *,char*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int FUNC14 (TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC15 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 double FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC18 (TYPE_4__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC21(AVFormatContext *avctx, AVPacket *pkt)
{
    LavfiContext *lavfi = avctx->priv_data;
    double min_pts = DBL_MAX;
    int stream_idx, min_pts_sink_idx = 0;
    AVFrame *frame = lavfi->decoded_frame;
    AVDictionary *frame_metadata;
    int ret, i;
    int size = 0;

    if (lavfi->subcc_packet.size) {
        *pkt = lavfi->subcc_packet;
        FUNC13(&lavfi->subcc_packet);
        lavfi->subcc_packet.size = 0;
        lavfi->subcc_packet.data = NULL;
        return pkt->size;
    }

    /* iterate through all the graph sinks. Select the sink with the
     * minimum PTS */
    for (i = 0; i < lavfi->nb_sinks; i++) {
        AVRational tb = FUNC7(lavfi->sinks[i]);
        double d;
        int ret;

        if (lavfi->sink_eof[i])
            continue;

        ret = FUNC6(lavfi->sinks[i], frame,
                                            AV_BUFFERSINK_FLAG_PEEK);
        if (ret == AVERROR_EOF) {
            FUNC19(avctx, "EOF sink_idx:%d\n", i);
            lavfi->sink_eof[i] = 1;
            continue;
        } else if (ret < 0)
            return ret;
        d = FUNC17(frame->pts, tb, AV_TIME_BASE_Q, AV_ROUND_NEAR_INF|AV_ROUND_PASS_MINMAX);
        FUNC19(avctx, "sink_idx:%d time:%f\n", i, d);
        FUNC9(frame);

        if (d < min_pts) {
            min_pts = d;
            min_pts_sink_idx = i;
        }
    }
    if (min_pts == DBL_MAX)
        return AVERROR_EOF;

    FUNC19(avctx, "min_pts_sink_idx:%i\n", min_pts_sink_idx);

    FUNC6(lavfi->sinks[min_pts_sink_idx], frame, 0);
    stream_idx = lavfi->sink_stream_map[min_pts_sink_idx];

    if (frame->width /* FIXME best way of testing a video */) {
        size = FUNC12(frame->format, frame->width, frame->height, 1);
        if ((ret = FUNC14(pkt, size)) < 0)
            return ret;

        FUNC11(pkt->data, size, (const uint8_t **)frame->data, frame->linesize,
                                frame->format, frame->width, frame->height, 1);
    } else if (frame->channels /* FIXME test audio */) {
        size = frame->nb_samples * FUNC10(frame->format) *
                                   frame->channels;
        if ((ret = FUNC14(pkt, size)) < 0)
            return ret;
        FUNC20(pkt->data, frame->data[0], size);
    }

    frame_metadata = frame->metadata;
    if (frame_metadata) {
        uint8_t *metadata;
        AVDictionaryEntry *e = NULL;
        AVBPrint meta_buf;

        FUNC3(&meta_buf, 0, AV_BPRINT_SIZE_UNLIMITED);
        while ((e = FUNC8(frame_metadata, "", e, AV_DICT_IGNORE_SUFFIX))) {
            FUNC5(&meta_buf, "%s", e->key);
            FUNC1(&meta_buf, '\0', 1);
            FUNC5(&meta_buf, "%s", e->value);
            FUNC1(&meta_buf, '\0', 1);
        }
        if (!FUNC4(&meta_buf) ||
            !(metadata = FUNC15(pkt, AV_PKT_DATA_STRINGS_METADATA,
                                                 meta_buf.len))) {
            FUNC2(&meta_buf, NULL);
            return FUNC0(ENOMEM);
        }
        FUNC20(metadata, meta_buf.str, meta_buf.len);
        FUNC2(&meta_buf, NULL);
    }

    if ((ret = FUNC18(avctx, frame, min_pts_sink_idx)) < 0) {
        FUNC9(frame);
        FUNC16(pkt);
        return ret;
    }

    pkt->stream_index = stream_idx;
    pkt->pts = frame->pts;
    pkt->pos = frame->pkt_pos;
    pkt->size = size;
    FUNC9(frame);
    return size;
}