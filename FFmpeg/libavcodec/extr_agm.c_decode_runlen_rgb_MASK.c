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
typedef  scalar_t__ uint8_t ;
struct TYPE_6__ {int height; } ;
struct TYPE_5__ {int* linesize; int width; int height; scalar_t__** data; } ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_1__ AVFrame ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(AVCodecContext *avctx, GetByteContext *gbyte, AVFrame *frame)
{
    uint8_t *dst = frame->data[0] + (avctx->height - 1) * frame->linesize[0];
    int runlen, y = 0, x = 0;
    uint8_t fill[4];
    unsigned code;

    while (FUNC1(gbyte) > 0) {
        code = FUNC2(gbyte);
        runlen = code & 0xFFFFFF;

        if (code >> 24 == 0x77) {
            FUNC3(gbyte, 4);

            for (int i = 0; i < 4; i++)
                fill[i] = FUNC0(gbyte);

            while (runlen > 0) {
                runlen--;

                for (int i = 0; i < 4; i++) {
                    dst[x] += fill[i];
                    x++;
                    if (x >= frame->width * 3) {
                        x = 0;
                        y++;
                        dst -= frame->linesize[0];
                        if (y >= frame->height)
                            return 0;
                    }
                }
            }
        } else {
            for (int i = 0; i < 4; i++)
                fill[i] = FUNC0(gbyte);

            for (int i = 0; i < 4; i++) {
                dst[x] += fill[i];
                x++;
                if (x >= frame->width * 3) {
                    x = 0;
                    y++;
                    dst -= frame->linesize[0];
                    if (y >= frame->height)
                        return 0;
                }
            }
        }
    }

    return 0;
}