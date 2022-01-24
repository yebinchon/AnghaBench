#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_14__ {int width; int height; TYPE_1__* priv_data; } ;
struct TYPE_13__ {int key_frame; int* data; int* linesize; } ;
struct TYPE_12__ {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_11__ {int mode; } ;
typedef  TYPE_1__ LOCOContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  ADVANCE_BY_DECODED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
#define  LOCO_CRGB 136 
#define  LOCO_CRGBA 135 
#define  LOCO_CYUY2 134 
#define  LOCO_CYV12 133 
#define  LOCO_RGB 132 
#define  LOCO_RGBA 131 
#define  LOCO_UYVY 130 
#define  LOCO_YUY2 129 
#define  LOCO_YV12 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (TYPE_4__*,TYPE_3__* const,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__* const,int,int,int,int,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,int) ; 

__attribute__((used)) static int FUNC6(AVCodecContext *avctx,
                        void *data, int *got_frame,
                        AVPacket *avpkt)
{
    LOCOContext * const l = avctx->priv_data;
    const uint8_t *buf    = avpkt->data;
    int buf_size          = avpkt->size;
    AVFrame * const p     = data;
    int decoded, ret;

    if ((ret = FUNC3(avctx, p, 0)) < 0)
        return ret;
    p->key_frame = 1;

#define ADVANCE_BY_DECODED do { \
    if (decoded < 0 || decoded >= buf_size) goto buf_too_small; \
    buf += decoded; buf_size -= decoded; \
} while(0)
    switch(l->mode) {
    case LOCO_CYUY2: case LOCO_YUY2: case LOCO_UYVY:
        decoded = FUNC4(l, p->data[0], avctx->width, avctx->height,
                                    p->linesize[0], buf, buf_size);
        ADVANCE_BY_DECODED;
        decoded = FUNC4(l, p->data[1], avctx->width / 2, avctx->height,
                                    p->linesize[1], buf, buf_size);
        ADVANCE_BY_DECODED;
        decoded = FUNC4(l, p->data[2], avctx->width / 2, avctx->height,
                                    p->linesize[2], buf, buf_size);
        break;
    case LOCO_CYV12: case LOCO_YV12:
        decoded = FUNC4(l, p->data[0], avctx->width, avctx->height,
                                    p->linesize[0], buf, buf_size);
        ADVANCE_BY_DECODED;
        decoded = FUNC4(l, p->data[2], avctx->width / 2, avctx->height / 2,
                                    p->linesize[2], buf, buf_size);
        ADVANCE_BY_DECODED;
        decoded = FUNC4(l, p->data[1], avctx->width / 2, avctx->height / 2,
                                    p->linesize[1], buf, buf_size);
        break;
    case LOCO_CRGB: case LOCO_RGB:
        decoded = FUNC4(l, p->data[1] + p->linesize[1]*(avctx->height-1), avctx->width, avctx->height,
                                    -p->linesize[1], buf, buf_size);
        ADVANCE_BY_DECODED;
        decoded = FUNC4(l, p->data[0] + p->linesize[0]*(avctx->height-1), avctx->width, avctx->height,
                                    -p->linesize[0], buf, buf_size);
        ADVANCE_BY_DECODED;
        decoded = FUNC4(l, p->data[2] + p->linesize[2]*(avctx->height-1), avctx->width, avctx->height,
                                    -p->linesize[2], buf, buf_size);
        if (avctx->width & 1) {
            FUNC5(p->data[0] + p->linesize[0]*(avctx->height-1), avctx->width, avctx->height, -p->linesize[0]);
            FUNC5(p->data[1] + p->linesize[1]*(avctx->height-1), avctx->width, avctx->height, -p->linesize[1]);
            FUNC5(p->data[2] + p->linesize[2]*(avctx->height-1), avctx->width, avctx->height, -p->linesize[2]);
        }
        break;
    case LOCO_CRGBA:
    case LOCO_RGBA:
        decoded = FUNC4(l, p->data[1] + p->linesize[1]*(avctx->height-1), avctx->width, avctx->height,
                                    -p->linesize[1], buf, buf_size);
        ADVANCE_BY_DECODED;
        decoded = FUNC4(l, p->data[0] + p->linesize[0]*(avctx->height-1), avctx->width, avctx->height,
                                    -p->linesize[0], buf, buf_size);
        ADVANCE_BY_DECODED;
        decoded = FUNC4(l, p->data[2] + p->linesize[2]*(avctx->height-1), avctx->width, avctx->height,
                                    -p->linesize[2], buf, buf_size);
        ADVANCE_BY_DECODED;
        decoded = FUNC4(l, p->data[3] + p->linesize[3]*(avctx->height-1), avctx->width, avctx->height,
                                    -p->linesize[3], buf, buf_size);
        break;
    default:
        FUNC1(0);
    }

    if (decoded < 0 || decoded > buf_size)
        goto buf_too_small;
    buf_size -= decoded;

    *got_frame      = 1;

    return avpkt->size - buf_size;
buf_too_small:
    FUNC2(avctx, AV_LOG_ERROR, "Input data too small.\n");
    return FUNC0(EINVAL);
}