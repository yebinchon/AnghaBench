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
typedef  int uint8_t ;
struct TYPE_6__ {int width; int height; } ;
struct TYPE_5__ {int** data; int /*<<< orphan*/ * linesize; } ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_1__ AVFrame ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(AVCodecContext *avctx, AVFrame *p, GetByteContext *gbc,
                      int step)
{
    int i, j;
    int offset = avctx->width * step;
    uint8_t *outdata = p->data[0];

    for (i = 0; i < avctx->height; i++) {
        int size, left, code, pix;
        uint8_t *out = outdata;
        int pos = 0;

        /* size of packed line */
        size = left = FUNC0(gbc);
        if (FUNC2(gbc) < size)
            return AVERROR_INVALIDDATA;

        /* decode line */
        while (left > 0) {
            code = FUNC1(gbc);
            if (code & 0x80 ) { /* run */
                pix = FUNC1(gbc);
                for (j = 0; j < 257 - code; j++) {
                    if (pos < offset)
                        out[pos] = pix;
                    pos += step;
                    if (pos >= offset && step > 1) {
                        pos -= offset;
                        pos++;
                    }
                }
                left  -= 2;
            } else { /* copy */
                for (j = 0; j < code + 1; j++) {
                    pix = FUNC1(gbc);
                    if (pos < offset)
                        out[pos] = pix;
                    pos += step;
                    if (pos >= offset && step > 1) {
                        pos -= offset;
                        pos++;
                    }
                }
                left  -= 2 + code;
            }
        }
        outdata += p->linesize[0];
    }
    return 0;
}