#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_9__ {int width; int height; int /*<<< orphan*/  pix_fmt; } ;
struct TYPE_8__ {int* linesize; scalar_t__** data; } ;
typedef  TYPE_1__ AVFrame ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__ const*) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PIX_FMT_YUV420P ; 
 long long FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(AVCodecContext *avctx, AVFrame *pic,
                                const uint8_t *src, int src_size)
{
    int h, w;
    uint8_t *Y1, *Y2, *U, *V;
    int ret;

    if (src_size < FUNC1(avctx->width, 2) * FUNC1(avctx->height, 2) * 3LL / 2) {
        FUNC2(avctx, AV_LOG_ERROR, "packet too small\n");
        return AVERROR_INVALIDDATA;
    }

    avctx->pix_fmt = AV_PIX_FMT_YUV420P;
    if ((ret = FUNC3(avctx, pic, 0)) < 0)
        return ret;

    Y1 = pic->data[0];
    Y2 = pic->data[0] + pic->linesize[0];
    U  = pic->data[1];
    V  = pic->data[2];
    for (h = 0; h < avctx->height; h += 2) {
        for (w = 0; w < avctx->width; w += 2) {
            FUNC0(Y1 + w, src);
            FUNC0(Y2 + w, src + 2);
            U[w >> 1] = src[4] + 0x80;
            V[w >> 1] = src[5] + 0x80;
            src += 6;
        }
        Y1 += pic->linesize[0] << 1;
        Y2 += pic->linesize[0] << 1;
        U  += pic->linesize[1];
        V  += pic->linesize[2];
    }

    return 0;
}