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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {scalar_t__ srcFormat; int dstFormat; int /*<<< orphan*/  srcW; } ;
typedef  TYPE_1__ SwsContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
#define  AV_PIX_FMT_ABGR 133 
#define  AV_PIX_FMT_ARGB 132 
#define  AV_PIX_FMT_BGR24 131 
#define  AV_PIX_FMT_BGRA 130 
 scalar_t__ AV_PIX_FMT_GBRAP ; 
#define  AV_PIX_FMT_RGB24 129 
#define  AV_PIX_FMT_RGBA 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const**,int*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const**,int*,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(SwsContext *c, const uint8_t *src[],
                                  int srcStride[], int srcSliceY, int srcSliceH,
                                  uint8_t *dst[], int dstStride[])
{
    int alpha_first = 0;
    const uint8_t *src102[] = { src[1], src[0], src[2], src[3] };
    const uint8_t *src201[] = { src[2], src[0], src[1], src[3] };
    int stride102[] = { srcStride[1], srcStride[0], srcStride[2], srcStride[3] };
    int stride201[] = { srcStride[2], srcStride[0], srcStride[1], srcStride[3] };

    if (c->srcFormat != AV_PIX_FMT_GBRAP) {
        FUNC1(c, AV_LOG_ERROR, "unsupported planar RGB conversion %s -> %s\n",
               FUNC0(c->srcFormat),
               FUNC0(c->dstFormat));
        return srcSliceH;
    }

    switch (c->dstFormat) {
    case AV_PIX_FMT_BGR24:
        FUNC2(src102, stride102,
                         dst[0] + srcSliceY * dstStride[0], dstStride[0],
                         srcSliceH, c->srcW);
        break;

    case AV_PIX_FMT_RGB24:
        FUNC2(src201, stride201,
                         dst[0] + srcSliceY * dstStride[0], dstStride[0],
                         srcSliceH, c->srcW);
        break;

    case AV_PIX_FMT_ARGB:
        alpha_first = 1;
    case AV_PIX_FMT_RGBA:
        FUNC3(src201, stride201,
                        dst[0] + srcSliceY * dstStride[0], dstStride[0],
                        srcSliceH, alpha_first, c->srcW);
        break;

    case AV_PIX_FMT_ABGR:
        alpha_first = 1;
    case AV_PIX_FMT_BGRA:
        FUNC3(src102, stride102,
                        dst[0] + srcSliceY * dstStride[0], dstStride[0],
                        srcSliceH, alpha_first, c->srcW);
        break;

    default:
        FUNC1(c, AV_LOG_ERROR,
               "unsupported planar RGB conversion %s -> %s\n",
               FUNC0(c->srcFormat),
               FUNC0(c->dstFormat));
    }

    return srcSliceH;
}