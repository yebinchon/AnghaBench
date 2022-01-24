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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_11__ {int height; int width; } ;
struct TYPE_10__ {int key_frame; int* linesize; scalar_t__* data; int /*<<< orphan*/  pict_type; } ;
struct TYPE_9__ {int size; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_I ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(AVCodecContext *avctx, void *data,
                             int *got_frame, AVPacket *avpkt)
{
    AVFrame *pic = data;
    uint8_t *src = avpkt->data;
    uint16_t *y, *u, *v;
    uint32_t val;
    int i, j, ret;

    if (avpkt->size < 4 * avctx->height * avctx->width) {
        FUNC2(avctx, AV_LOG_ERROR, "Insufficient input data.\n");
        return FUNC0(EINVAL);
    }

    if ((ret = FUNC3(avctx, pic, 0)) < 0)
        return ret;

    pic->key_frame = 1;
    pic->pict_type = AV_PICTURE_TYPE_I;

    y = (uint16_t *)pic->data[0];
    u = (uint16_t *)pic->data[1];
    v = (uint16_t *)pic->data[2];

    for (i = 0; i < avctx->height; i++) {
        for (j = 0; j < avctx->width; j++) {
            val = FUNC1(src);

            u[j] = (val >>  2) & 0x3FF;
            y[j] = (val >> 12) & 0x3FF;
            v[j] = (val >> 22);

            src += 4;
        }

        y += pic->linesize[0] >> 1;
        u += pic->linesize[1] >> 1;
        v += pic->linesize[2] >> 1;
    }

    *got_frame = 1;

    return avpkt->size;
}