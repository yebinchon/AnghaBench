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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_3__ {int flags; } ;
typedef  TYPE_1__ AVPixFmtDescriptor ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int AV_PIX_FMT_FLAG_PAL ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int,int) ; 
 int FF_PSEUDOPAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int*,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ **,int,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 TYPE_1__* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC11(uint8_t *pointers[4], int linesizes[4],
                   int w, int h, enum AVPixelFormat pix_fmt, int align)
{
    const AVPixFmtDescriptor *desc = FUNC8(pix_fmt);
    int i, ret;
    uint8_t *buf;

    if (!desc)
        return FUNC0(EINVAL);

    if ((ret = FUNC3(w, h, 0, NULL)) < 0)
        return ret;
    if ((ret = FUNC4(linesizes, pix_fmt, align>7 ? FUNC1(w, 8) : w)) < 0)
        return ret;

    for (i = 0; i < 4; i++)
        linesizes[i] = FUNC1(linesizes[i], align);

    if ((ret = FUNC5(pointers, pix_fmt, h, NULL, linesizes)) < 0)
        return ret;
    buf = FUNC7(ret + align);
    if (!buf)
        return FUNC0(ENOMEM);
    if ((ret = FUNC5(pointers, pix_fmt, h, buf, linesizes)) < 0) {
        FUNC2(buf);
        return ret;
    }
    if (desc->flags & AV_PIX_FMT_FLAG_PAL || (desc->flags & FF_PSEUDOPAL && pointers[1])) {
        FUNC9((uint32_t*)pointers[1], pix_fmt);
        if (align < 4) {
            FUNC6(NULL, AV_LOG_ERROR, "Formats with a palette require a minimum alignment of 4\n");
            return FUNC0(EINVAL);
        }
    }

    if ((desc->flags & AV_PIX_FMT_FLAG_PAL ||
         desc->flags & FF_PSEUDOPAL) && pointers[1] &&
        pointers[1] - pointers[0] > linesizes[0] * h) {
        /* zero-initialize the padding before the palette */
        FUNC10(pointers[0] + linesizes[0] * h, 0,
               pointers[1] - pointers[0] - linesizes[0] * h);
    }

    return ret;
}