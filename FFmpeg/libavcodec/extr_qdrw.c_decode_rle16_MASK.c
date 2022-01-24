#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct TYPE_6__ {int width; int height; } ;
struct TYPE_5__ {int /*<<< orphan*/ * linesize; int /*<<< orphan*/ ** data; } ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_1__ AVFrame ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(AVCodecContext *avctx, AVFrame *p, GetByteContext *gbc)
{
    int offset = avctx->width;
    uint8_t *outdata = p->data[0];
    int i, j;

    for (i = 0; i < avctx->height; i++) {
        int size, left, code, pix;
        uint16_t *out = (uint16_t *)outdata;
        int pos = 0;

        /* size of packed line */
        size = left = FUNC0(gbc);
        if (FUNC2(gbc) < size)
            return AVERROR_INVALIDDATA;

        /* decode line */
        while (left > 0) {
            code = FUNC1(gbc);
            if (code & 0x80 ) { /* run */
                pix = FUNC0(gbc);
                for (j = 0; j < 257 - code; j++) {
                    if (pos < offset) {
                        out[pos++] = pix;
                    }
                }
                left  -= 3;
            } else { /* copy */
                for (j = 0; j < code + 1; j++) {
                    if (pos < offset) {
                        out[pos++] = FUNC0(gbc);
                    } else {
                        FUNC3(gbc, 2);
                    }
                }
                left  -= 1 + (code + 1) * 2;
            }
        }
        outdata += p->linesize[0];
    }
    return 0;
}