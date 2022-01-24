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
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_4__ {int srcFormat; int dstFormat; int srcW; scalar_t__ pal_rgb; } ;
typedef  TYPE_1__ SwsContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
#define  AV_PIX_FMT_BGR24 133 
#define  AV_PIX_FMT_BGR32 132 
#define  AV_PIX_FMT_BGR32_1 131 
#define  AV_PIX_FMT_RGB24 130 
#define  AV_PIX_FMT_RGB32 129 
#define  AV_PIX_FMT_RGB32_1 128 
 int const AV_PIX_FMT_YA8 ; 
 int /*<<< orphan*/  FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*) ; 
 void FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*) ; 
 void FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*) ; 
 void FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*) ; 
 void FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (int const) ; 

__attribute__((used)) static int FUNC8(SwsContext *c, const uint8_t *src[], int srcStride[],
                           int srcSliceY, int srcSliceH, uint8_t *dst[],
                           int dstStride[])
{
    const enum AVPixelFormat srcFormat = c->srcFormat;
    const enum AVPixelFormat dstFormat = c->dstFormat;
    void (*conv)(const uint8_t *src, uint8_t *dst, int num_pixels,
                 const uint8_t *palette) = NULL;
    int i;
    uint8_t *dstPtr = dst[0] + dstStride[0] * srcSliceY;
    const uint8_t *srcPtr = src[0];

    if (srcFormat == AV_PIX_FMT_YA8) {
        switch (dstFormat) {
        case AV_PIX_FMT_RGB32  : conv = gray8aToPacked32; break;
        case AV_PIX_FMT_BGR32  : conv = gray8aToPacked32; break;
        case AV_PIX_FMT_BGR32_1: conv = gray8aToPacked32_1; break;
        case AV_PIX_FMT_RGB32_1: conv = gray8aToPacked32_1; break;
        case AV_PIX_FMT_RGB24  : conv = gray8aToPacked24; break;
        case AV_PIX_FMT_BGR24  : conv = gray8aToPacked24; break;
        }
    } else if (FUNC7(srcFormat)) {
        switch (dstFormat) {
        case AV_PIX_FMT_RGB32  : conv = sws_convertPalette8ToPacked32; break;
        case AV_PIX_FMT_BGR32  : conv = sws_convertPalette8ToPacked32; break;
        case AV_PIX_FMT_BGR32_1: conv = sws_convertPalette8ToPacked32; break;
        case AV_PIX_FMT_RGB32_1: conv = sws_convertPalette8ToPacked32; break;
        case AV_PIX_FMT_RGB24  : conv = sws_convertPalette8ToPacked24; break;
        case AV_PIX_FMT_BGR24  : conv = sws_convertPalette8ToPacked24; break;
        }
    }

    if (!conv)
        FUNC1(c, AV_LOG_ERROR, "internal error %s -> %s converter\n",
               FUNC0(srcFormat), FUNC0(dstFormat));
    else {
        for (i = 0; i < srcSliceH; i++) {
            conv(srcPtr, dstPtr, c->srcW, (uint8_t *) c->pal_rgb);
            srcPtr += srcStride[0];
            dstPtr += dstStride[0];
        }
    }

    return srcSliceH;
}