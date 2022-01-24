#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_20__ ;
typedef  struct TYPE_30__   TYPE_1__ ;

/* Type definitions */
struct TYPE_34__ {int fflags; int bitstream_size; int key_frame; unsigned int output_size; int flags; int compression; long* size; TYPE_20__* prev_frame; scalar_t__ rgb; scalar_t__ dct; int /*<<< orphan*/  output; int /*<<< orphan*/  gbyte; int /*<<< orphan*/  gb; } ;
struct TYPE_33__ {scalar_t__ codec_tag; int width; int height; scalar_t__ coded_width; scalar_t__ coded_height; TYPE_4__* priv_data; } ;
struct TYPE_32__ {int key_frame; scalar_t__ width; scalar_t__ height; scalar_t__ crop_left; scalar_t__ crop_top; int /*<<< orphan*/  pict_type; } ;
struct TYPE_31__ {scalar_t__ width; scalar_t__ height; int /*<<< orphan*/ * data; } ;
struct TYPE_30__ {unsigned int size; int flags; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVCodecContext ;
typedef  TYPE_4__ AGMContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AV_GET_BUFFER_FLAG_REF ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_I ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_P ; 
 int AV_PKT_FLAG_KEY ; 
 int INT32_MIN ; 
 scalar_t__ FUNC0 (char,char,char,char) ; 
 int FUNC1 (TYPE_2__*,TYPE_20__*) ; 
 int FUNC2 (TYPE_20__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_20__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (TYPE_3__*,int,int) ; 
 int FUNC9 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__*,TYPE_20__*) ; 
 int FUNC10 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC11 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC12 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC13 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC14 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC15 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC16 (TYPE_3__*,int,int) ; 

__attribute__((used)) static int FUNC17(AVCodecContext *avctx, void *data,
                        int *got_frame, AVPacket *avpkt)
{
    AGMContext *s = avctx->priv_data;
    GetBitContext *gb = &s->gb;
    GetByteContext *gbyte = &s->gbyte;
    AVFrame *frame = data;
    int w, h, width, height, header;
    unsigned compressed_size;
    long skip;
    int ret;

    if (!avpkt->size)
        return 0;

    FUNC6(gbyte, avpkt->data, avpkt->size);

    header = FUNC5(gbyte);
    s->fflags = FUNC5(gbyte);
    s->bitstream_size = s->fflags & 0x1FFFFFFF;
    s->fflags >>= 29;
    FUNC4(avctx, AV_LOG_DEBUG, "fflags: %X\n", s->fflags);
    if (avpkt->size < s->bitstream_size + 8)
        return AVERROR_INVALIDDATA;

    s->key_frame = (avpkt->flags & AV_PKT_FLAG_KEY);
    frame->key_frame = s->key_frame;
    frame->pict_type = s->key_frame ? AV_PICTURE_TYPE_I : AV_PICTURE_TYPE_P;

    if (!s->key_frame) {
        if (!s->prev_frame->data[0]) {
            FUNC4(avctx, AV_LOG_ERROR, "Missing reference frame.\n");
            return AVERROR_INVALIDDATA;
        }
    }

    if (header) {
        if (avctx->codec_tag == FUNC0('A', 'G', 'M', '0') ||
            avctx->codec_tag == FUNC0('A', 'G', 'M', '1'))
            return AVERROR_PATCHWELCOME;
        else
            ret = FUNC8(avctx, header, (avpkt->size - s->bitstream_size) - 8);
        if (ret < 0)
            return ret;
        FUNC6(gbyte, s->output, s->output_size);
    } else if (!s->dct) {
        FUNC7(gbyte, 4);
    }

    if (s->dct) {
        s->flags = 0;
        w = FUNC5(gbyte);
        h = FUNC5(gbyte);
        if (w == INT32_MIN || h == INT32_MIN)
            return AVERROR_INVALIDDATA;
        if (w < 0) {
            w = -w;
            s->flags |= 2;
        }
        if (h < 0) {
            h = -h;
            s->flags |= 1;
        }

        width  = avctx->width;
        height = avctx->height;
        if (w < width || h < height || w & 7 || h & 7)
            return AVERROR_INVALIDDATA;

        ret = FUNC16(avctx, w, h);
        if (ret < 0)
            return ret;
        avctx->width = width;
        avctx->height = height;

        s->compression = FUNC5(gbyte);
        if (s->compression < 0 || s->compression > 100)
            return AVERROR_INVALIDDATA;

        for (int i = 0; i < 3; i++)
            s->size[i] = FUNC5(gbyte);
        if (header) {
            compressed_size = s->output_size;
            skip = 8LL;
        } else {
            compressed_size = avpkt->size;
            skip = 32LL;
        }
        if (s->size[0] < 0 || s->size[1] < 0 || s->size[2] < 0 ||
            skip + s->size[0] + s->size[1] + s->size[2] > compressed_size) {
            return AVERROR_INVALIDDATA;
        }
    }

    if ((ret = FUNC15(avctx, frame, AV_GET_BUFFER_FLAG_REF)) < 0)
        return ret;

    if (frame->key_frame) {
        if (!s->dct && !s->rgb)
            ret = FUNC11(avctx, gbyte, frame);
        else if (!s->dct && s->rgb)
            ret = FUNC12(avctx, gbyte, frame);
        else
            ret = FUNC10(avctx, gb, frame);
    } else {
        if (s->prev_frame-> width != frame->width ||
            s->prev_frame->height != frame->height)
            return AVERROR_INVALIDDATA;

        if (!(s->flags & 2)) {
            ret = FUNC1(frame, s->prev_frame);
            if (ret < 0)
                return ret;
        }

        if (s->dct) {
            ret = FUNC9(avctx, gb, frame, s->prev_frame);
        } else if (!s->dct && !s->rgb) {
            ret = FUNC13(avctx, gbyte, frame);
        } else {
            ret = FUNC14(avctx, gbyte, frame);
        }
    }
    if (ret < 0)
        return ret;

    FUNC3(s->prev_frame);
    if ((ret = FUNC2(s->prev_frame, frame)) < 0)
        return ret;

    frame->crop_top  = avctx->coded_height - avctx->height;
    frame->crop_left = avctx->coded_width  - avctx->width;

    *got_frame = 1;

    return avpkt->size;
}