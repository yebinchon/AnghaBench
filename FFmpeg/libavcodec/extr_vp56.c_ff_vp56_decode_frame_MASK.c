#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_13__ {void** frames; int (* parse_header ) (TYPE_1__*,int /*<<< orphan*/  const*,int) ;scalar_t__ discard_frame; TYPE_6__* alpha_context; scalar_t__ has_alpha; } ;
typedef  TYPE_1__ VP56Context ;
struct TYPE_16__ {void* const* frames; int (* parse_header ) (TYPE_6__*,int /*<<< orphan*/  const*,int) ;} ;
struct TYPE_15__ {scalar_t__ pix_fmt; int width; int height; int coded_width; int coded_height; int /*<<< orphan*/  (* execute2 ) (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;TYPE_1__* priv_data; } ;
struct TYPE_14__ {int size; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ AVPacket ;
typedef  void AVFrame ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_GET_BUFFER_FLAG_REF ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_PIX_FMT_YUVA420P ; 
 size_t VP56_FRAME_CURRENT ; 
 int VP56_SIZE_CHANGE ; 
 int FUNC0 (void*,void* const) ; 
 int /*<<< orphan*/  FUNC1 (void* const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/  const**) ; 
 int FUNC4 (TYPE_3__*,void* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ff_vp56_decode_mbs ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int FUNC7 (TYPE_6__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 

int FUNC10(AVCodecContext *avctx, void *data, int *got_frame,
                         AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    VP56Context *s = avctx->priv_data;
    AVFrame *const p = s->frames[VP56_FRAME_CURRENT];
    int remaining_buf_size = avpkt->size;
    int alpha_offset = remaining_buf_size;
    int i, res;
    int ret;

    if (s->has_alpha) {
        if (remaining_buf_size < 3)
            return AVERROR_INVALIDDATA;
        alpha_offset = FUNC3(&buf);
        remaining_buf_size -= 3;
        if (remaining_buf_size < alpha_offset)
            return AVERROR_INVALIDDATA;
    }

    res = s->parse_header(s, buf, alpha_offset);
    if (res < 0)
        return res;

    if (res == VP56_SIZE_CHANGE) {
        for (i = 0; i < 4; i++) {
            FUNC1(s->frames[i]);
            if (s->alpha_context)
                FUNC1(s->alpha_context->frames[i]);
        }
    }

    ret = FUNC4(avctx, p, AV_GET_BUFFER_FLAG_REF);
    if (ret < 0) {
        if (res == VP56_SIZE_CHANGE)
            FUNC5(avctx, 0, 0);
        return ret;
    }

    if (avctx->pix_fmt == AV_PIX_FMT_YUVA420P) {
        FUNC1(s->alpha_context->frames[VP56_FRAME_CURRENT]);
        if ((ret = FUNC0(s->alpha_context->frames[VP56_FRAME_CURRENT], p)) < 0) {
            FUNC1(p);
            if (res == VP56_SIZE_CHANGE)
                FUNC5(avctx, 0, 0);
            return ret;
        }
    }

    if (res == VP56_SIZE_CHANGE) {
        if (FUNC9(s)) {
            FUNC1(p);
            return AVERROR_INVALIDDATA;
        }
    }

    if (avctx->pix_fmt == AV_PIX_FMT_YUVA420P) {
        int bak_w = avctx->width;
        int bak_h = avctx->height;
        int bak_cw = avctx->coded_width;
        int bak_ch = avctx->coded_height;
        buf += alpha_offset;
        remaining_buf_size -= alpha_offset;

        res = s->alpha_context->parse_header(s->alpha_context, buf, remaining_buf_size);
        if (res != 0) {
            if(res==VP56_SIZE_CHANGE) {
                FUNC2(avctx, AV_LOG_ERROR, "Alpha reconfiguration\n");
                avctx->width  = bak_w;
                avctx->height = bak_h;
                avctx->coded_width  = bak_cw;
                avctx->coded_height = bak_ch;
            }
            FUNC1(p);
            return AVERROR_INVALIDDATA;
        }
    }

    s->discard_frame = 0;
    avctx->execute2(avctx, ff_vp56_decode_mbs, 0, 0, (avctx->pix_fmt == AV_PIX_FMT_YUVA420P) + 1);

    if (s->discard_frame)
        return AVERROR_INVALIDDATA;

    if ((res = FUNC0(data, p)) < 0)
        return res;
    *got_frame = 1;

    return avpkt->size;
}