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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {int chrDstVSubSample; } ;
typedef  TYPE_1__ SwsContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static int FUNC3(SwsContext *c, const uint8_t *src[],
                              int srcStride[], int srcSliceY, int srcSliceH,
                              uint8_t *dst[], int dstStride[])
{
    int i, j, p;

    for (p = 0; p < 4; p++) {
        int srcstr = srcStride[p] / 2;
        int dststr = dstStride[p] / 2;
        uint16_t       *dstPtr =       (uint16_t *) dst[p];
        const uint16_t *srcPtr = (const uint16_t *) src[p];
        int min_stride         = FUNC1(FUNC0(srcstr), FUNC0(dststr));
        if(!dstPtr || !srcPtr)
            continue;
        dstPtr += (srcSliceY >> c->chrDstVSubSample) * dststr;
        for (i = 0; i < (srcSliceH >> c->chrDstVSubSample); i++) {
            for (j = 0; j < min_stride; j++) {
                dstPtr[j] = FUNC2(srcPtr[j]);
            }
            srcPtr += srcstr;
            dstPtr += dststr;
        }
    }

    return srcSliceH;
}