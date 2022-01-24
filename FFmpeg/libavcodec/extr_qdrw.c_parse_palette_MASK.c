#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_4__ {scalar_t__ pix_fmt; } ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_1__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ AV_PIX_FMT_PAL8 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(AVCodecContext *avctx, GetByteContext *gbc,
                         uint32_t *pal, int colors, int pixmap)
{
    int i;

    for (i = 0; i <= colors; i++) {
        uint8_t r, g, b;
        unsigned int idx = FUNC1(gbc); /* color index */
        if (idx > 255 && !pixmap) {
            FUNC0(avctx, AV_LOG_WARNING,
                   "Palette index out of range: %u\n", idx);
            FUNC3(gbc, 6);
            continue;
        }
        if (avctx->pix_fmt != AV_PIX_FMT_PAL8)
            return AVERROR_INVALIDDATA;
        r = FUNC2(gbc);
        FUNC3(gbc, 1);
        g = FUNC2(gbc);
        FUNC3(gbc, 1);
        b = FUNC2(gbc);
        FUNC3(gbc, 1);
        pal[pixmap ? i : idx] = (0xFFU << 24) | (r << 16) | (g << 8) | b;
    }
    return 0;
}