#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_20__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_23__ {scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_1__ svq1_pmv ;
struct TYPE_28__ {scalar_t__ skip_frame; int flags; TYPE_2__* priv_data; } ;
struct TYPE_27__ {scalar_t__ pict_type; int* linesize; int /*<<< orphan*/ ** data; } ;
struct TYPE_26__ {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_25__ {int frame_code; int width; int height; TYPE_20__* prev; scalar_t__ nonref; int /*<<< orphan*/  gb; int /*<<< orphan*/  hdsp; int /*<<< orphan*/ * pkt_swapped; int /*<<< orphan*/  pkt_swapped_allocated; } ;
struct TYPE_24__ {scalar_t__ width; scalar_t__ height; int /*<<< orphan*/ ** data; } ;
typedef  TYPE_2__ SVQ1Context ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVFrame ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
 scalar_t__ AVDISCARD_ALL ; 
 scalar_t__ AVDISCARD_NONKEY ; 
 scalar_t__ AVDISCARD_NONREF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AV_CODEC_FLAG_GRAY ; 
 int /*<<< orphan*/  AV_GET_BUFFER_FLAG_REF ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_PICTURE_TYPE_I ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (TYPE_20__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_20__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,char*,int) ; 
 int FUNC9 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_5__*,int,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC18 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_1__*,int,int,int,int) ; 
 int FUNC19 (TYPE_5__*,TYPE_4__*) ; 

__attribute__((used)) static int FUNC20(AVCodecContext *avctx, void *data,
                             int *got_frame, AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size       = avpkt->size;
    SVQ1Context     *s = avctx->priv_data;
    AVFrame       *cur = data;
    uint8_t *current;
    int result, i, x, y, width, height;
    svq1_pmv *pmv;
    int ret;

    /* initialize bit buffer */
    ret = FUNC13(&s->gb, buf, buf_size);
    if (ret < 0)
        return ret;

    /* decode frame header */
    s->frame_code = FUNC11(&s->gb, 22);

    if ((s->frame_code & ~0x70) || !(s->frame_code & 0x60))
        return AVERROR_INVALIDDATA;

    /* swap some header bytes (why?) */
    if (s->frame_code != 0x20) {
        uint32_t *src;

        if (buf_size < 9 * 4) {
            FUNC6(avctx, AV_LOG_ERROR, "Input packet too small\n");
            return AVERROR_INVALIDDATA;
        }

        FUNC2(&s->pkt_swapped,
                              &s->pkt_swapped_allocated,
                              buf_size);
        if (!s->pkt_swapped)
            return FUNC0(ENOMEM);

        FUNC14(s->pkt_swapped, buf, buf_size);
        buf = s->pkt_swapped;
        FUNC12(&s->gb, buf, buf_size * 8);
        FUNC16(&s->gb, 22);

        src = (uint32_t *)(s->pkt_swapped + 4);

        for (i = 0; i < 4; i++)
            src[i] = ((src[i] << 16) | (src[i] >> 16)) ^ src[7 - i];
    }

    result = FUNC19(avctx, cur);
    if (result != 0) {
        FUNC8(avctx, "Error in svq1_decode_frame_header %i\n", result);
        return result;
    }

    result = FUNC10(avctx, s->width, s->height);
    if (result < 0)
        return result;

    if ((avctx->skip_frame >= AVDISCARD_NONREF && s->nonref) ||
        (avctx->skip_frame >= AVDISCARD_NONKEY &&
         cur->pict_type != AV_PICTURE_TYPE_I) ||
        avctx->skip_frame >= AVDISCARD_ALL)
        return buf_size;

    result = FUNC9(avctx, cur, s->nonref ? 0 : AV_GET_BUFFER_FLAG_REF);
    if (result < 0)
        return result;

    pmv = FUNC7((FUNC1(s->width, 16) / 8 + 3) * sizeof(*pmv));
    if (!pmv)
        return FUNC0(ENOMEM);

    /* decode y, u and v components */
    for (i = 0; i < 3; i++) {
        int linesize = cur->linesize[i];
        if (i == 0) {
            width    = FUNC1(s->width,  16);
            height   = FUNC1(s->height, 16);
        } else {
            if (avctx->flags & AV_CODEC_FLAG_GRAY)
                break;
            width    = FUNC1(s->width  / 4, 16);
            height   = FUNC1(s->height / 4, 16);
        }

        current = cur->data[i];

        if (cur->pict_type == AV_PICTURE_TYPE_I) {
            /* keyframe */
            for (y = 0; y < height; y += 16) {
                for (x = 0; x < width; x += 16) {
                    result = FUNC17(&s->gb, &current[x],
                                                     linesize);
                    if (result) {
                        FUNC6(avctx, AV_LOG_ERROR,
                               "Error in svq1_decode_block %i (keyframe)\n",
                               result);
                        goto err;
                    }
                }
                current += 16 * linesize;
            }
        } else {
            /* delta frame */
            uint8_t *previous = s->prev->data[i];
            if (!previous ||
                s->prev->width != s->width || s->prev->height != s->height) {
                FUNC6(avctx, AV_LOG_ERROR, "Missing reference frame.\n");
                result = AVERROR_INVALIDDATA;
                goto err;
            }

            FUNC15(pmv, 0, ((width / 8) + 3) * sizeof(svq1_pmv));

            for (y = 0; y < height; y += 16) {
                for (x = 0; x < width; x += 16) {
                    result = FUNC18(avctx, &s->hdsp,
                                                     &s->gb, &current[x],
                                                     previous, linesize,
                                                     pmv, x, y, width, height);
                    if (result != 0) {
                        FUNC8(avctx,
                                "Error in svq1_decode_delta_block %i\n",
                                result);
                        goto err;
                    }
                }

                pmv[0].x     =
                    pmv[0].y = 0;

                current += 16 * linesize;
            }
        }
    }

    if (!s->nonref) {
        FUNC4(s->prev);
        result = FUNC3(s->prev, cur);
        if (result < 0)
            goto err;
    }

    *got_frame = 1;
    result     = buf_size;

err:
    FUNC5(pmv);
    return result;
}