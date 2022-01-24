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
typedef  unsigned char uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  g; int /*<<< orphan*/  avctx; } ;
typedef  TYPE_1__ SgiState ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned char FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(SgiState *s, uint8_t *out_buf,
                           int len, int pixelstride)
{
    unsigned char pixel, count;
    unsigned char *orig = out_buf;
    uint8_t *out_end = out_buf + len;

    while (out_buf < out_end) {
        if (FUNC2(&s->g) < 1)
            return AVERROR_INVALIDDATA;
        pixel = FUNC3(&s->g);
        if (!(count = (pixel & 0x7f))) {
            break;
        }

        /* Check for buffer overflow. */
        if (out_end - out_buf <= pixelstride * (count - 1)) {
            FUNC0(s->avctx, AV_LOG_ERROR, "Invalid pixel count.\n");
            return AVERROR_INVALIDDATA;
        }

        if (pixel & 0x80) {
            while (count--) {
                *out_buf = FUNC1(&s->g);
                out_buf += pixelstride;
            }
        } else {
            pixel = FUNC1(&s->g);

            while (count--) {
                *out_buf = pixel;
                out_buf += pixelstride;
            }
        }
    }
    return (out_buf - orig) / pixelstride;
}