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
struct TYPE_3__ {int /*<<< orphan*/  srcW; int /*<<< orphan*/  chrSrcW; } ;
typedef  TYPE_1__ SwsContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC3(SwsContext *c, const uint8_t *src[],
                             int srcStride[], int srcSliceY, int srcSliceH,
                             uint8_t *dst[], int dstStride[])
{
    FUNC0(src[0], srcStride[0], srcSliceY, srcSliceH, c->srcW,
              dst[0], dstStride[0]);

    FUNC2(src[1], dst[1] + dstStride[1] * (srcSliceY >> 1), c->chrSrcW,
             srcSliceH >> 2, srcStride[1], dstStride[1]);
    FUNC2(src[2], dst[2] + dstStride[2] * (srcSliceY >> 1), c->chrSrcW,
             srcSliceH >> 2, srcStride[2], dstStride[2]);
    if (dst[3])
        FUNC1(dst[3], dstStride[3], c->srcW, srcSliceH, srcSliceY, 255);
    return srcSliceH;
}