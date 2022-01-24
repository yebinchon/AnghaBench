#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned short uint16_t ;
struct TYPE_3__ {int /*<<< orphan*/  g; int /*<<< orphan*/  avctx; } ;
typedef  TYPE_1__ SgiState ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (unsigned short*,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 unsigned short FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned short FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(SgiState *s, uint16_t *out_buf,
                            int len, int pixelstride)
{
    unsigned short pixel;
    unsigned char count;
    unsigned short *orig = out_buf;
    uint16_t *out_end = out_buf + len;

    while (out_buf < out_end) {
        if (FUNC3(&s->g) < 2)
            return AVERROR_INVALIDDATA;
        pixel = FUNC2(&s->g);
        if (!(count = (pixel & 0x7f)))
            break;

        /* Check for buffer overflow. */
        if (out_end - out_buf <= pixelstride * (count - 1)) {
            FUNC1(s->avctx, AV_LOG_ERROR, "Invalid pixel count.\n");
            return AVERROR_INVALIDDATA;
        }

        if (pixel & 0x80) {
            while (count--) {
                pixel = FUNC4(&s->g);
                FUNC0(out_buf, pixel);
                out_buf += pixelstride;
            }
        } else {
            pixel = FUNC4(&s->g);

            while (count--) {
                FUNC0(out_buf, pixel);
                out_buf += pixelstride;
            }
        }
    }
    return (out_buf - orig) / pixelstride;
}