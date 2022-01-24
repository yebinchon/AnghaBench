#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  pix_fmt; } ;
struct TYPE_20__ {int height; int /*<<< orphan*/ * linesize; int /*<<< orphan*/  data; int /*<<< orphan*/  format; int /*<<< orphan*/  width; int /*<<< orphan*/ * extended_data; } ;
struct TYPE_19__ {int pts; int size; } ;
struct TYPE_18__ {int log2_chroma_h; } ;
struct TYPE_17__ {int frames_per_jpeg; int mjpeg_data_size; int height; TYPE_4__** picture; int /*<<< orphan*/  width; int /*<<< orphan*/  pix_fmt; TYPE_9__* avctx; struct TYPE_17__* priv_data; } ;
typedef  TYPE_1__ SMVJpegDecodeContext ;
typedef  TYPE_2__ AVPixFmtDescriptor ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVFrame ;
typedef  TYPE_1__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int AV_NUM_DATA_POINTERS ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__ const*) ; 
 int FUNC2 (void*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_9__*,TYPE_4__*,int*,TYPE_3__*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC9(AVCodecContext *avctx, void *data, int *data_size,
                            AVPacket *avpkt)
{
    const AVPixFmtDescriptor *desc;
    SMVJpegDecodeContext *s = avctx->priv_data;
    AVFrame* mjpeg_data = s->picture[0];
    int i, cur_frame = 0, ret = 0;

    cur_frame = avpkt->pts % s->frames_per_jpeg;

    /* cur_frame is later used to calculate the buffer offset, so it mustn't be negative */
    if (cur_frame < 0)
        cur_frame += s->frames_per_jpeg;

    /* Are we at the start of a block? */
    if (!cur_frame) {
        FUNC3(mjpeg_data);
        ret = FUNC6(s->avctx, mjpeg_data, &s->mjpeg_data_size, avpkt);
        if (ret < 0) {
            s->mjpeg_data_size = 0;
            return ret;
        }
    } else if (!s->mjpeg_data_size)
        return FUNC0(EINVAL);

    desc = FUNC5(s->avctx->pix_fmt);
    FUNC1(desc);

    if (mjpeg_data->height % (s->frames_per_jpeg << desc->log2_chroma_h)) {
        FUNC4(avctx, AV_LOG_ERROR, "Invalid height\n");
        return AVERROR_INVALIDDATA;
    }

    /*use the last lot... */
    *data_size = s->mjpeg_data_size;

    avctx->pix_fmt = s->avctx->pix_fmt;

    /* We shouldn't get here if frames_per_jpeg <= 0 because this was rejected
       in init */
    ret = FUNC7(avctx, mjpeg_data->width, mjpeg_data->height / s->frames_per_jpeg);
    if (ret < 0) {
        FUNC4(s, AV_LOG_ERROR, "Failed to set dimensions\n");
        return ret;
    }

    if (*data_size) {
        s->picture[1]->extended_data = NULL;
        s->picture[1]->width         = avctx->width;
        s->picture[1]->height        = avctx->height;
        s->picture[1]->format        = avctx->pix_fmt;
        FUNC8(s->picture[1]->data, mjpeg_data->data, mjpeg_data->linesize,
                    avctx->pix_fmt, avctx->width, avctx->height, cur_frame);
        for (i = 0; i < AV_NUM_DATA_POINTERS; i++)
            s->picture[1]->linesize[i] = mjpeg_data->linesize[i];

        ret = FUNC2(data, s->picture[1]);
        if (ret < 0)
            return ret;
    }

    return avpkt->size;
}