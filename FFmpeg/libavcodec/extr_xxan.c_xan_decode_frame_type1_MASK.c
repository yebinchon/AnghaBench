#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_9__ {int* scratch_buffer; int buffer_size; int* y_buffer; TYPE_1__* pic; int /*<<< orphan*/  gb; } ;
typedef  TYPE_2__ XanContext ;
struct TYPE_10__ {int height; int width; TYPE_2__* priv_data; } ;
struct TYPE_8__ {int** data; int /*<<< orphan*/ * linesize; } ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,int*,int) ; 

__attribute__((used)) static int FUNC5(AVCodecContext *avctx)
{
    XanContext *s = avctx->priv_data;
    uint8_t *ybuf, *src = s->scratch_buffer;
    int cur, last;
    int i, j;
    int ret;

    if ((ret = FUNC3(avctx, FUNC1(&s->gb))) != 0)
        return ret;

    FUNC2(&s->gb, 16, SEEK_SET);
    ret = FUNC4(s, src,
                          s->buffer_size >> 1);
    if (ret) {
        FUNC0(avctx, AV_LOG_ERROR, "Luma decoding failed\n");
        return ret;
    }

    ybuf = s->y_buffer;
    for (i = 0; i < avctx->height; i++) {
        last = (ybuf[0] + (*src++ << 1)) & 0x3F;
        ybuf[0] = last;
        for (j = 1; j < avctx->width - 1; j += 2) {
            cur = (ybuf[j + 1] + (*src++ << 1)) & 0x3F;
            ybuf[j]   = (last + cur) >> 1;
            ybuf[j+1] = cur;
            last = cur;
        }
        ybuf[j] = last;
        ybuf += avctx->width;
    }

    src = s->y_buffer;
    ybuf = s->pic->data[0];
    for (j = 0; j < avctx->height; j++) {
        for (i = 0; i < avctx->width; i++)
            ybuf[i] = (src[i] << 2) | (src[i] >> 3);
        src  += avctx->width;
        ybuf += s->pic->linesize[0];
    }

    return 0;
}