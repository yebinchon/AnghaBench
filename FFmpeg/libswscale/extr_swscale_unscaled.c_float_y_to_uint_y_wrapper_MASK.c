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
typedef  int ptrdiff_t ;
struct TYPE_3__ {int srcW; } ;
typedef  TYPE_1__ SwsContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (float) ; 

__attribute__((used)) static int FUNC2(SwsContext *c, const uint8_t* src[],
                                     int srcStride[], int srcSliceY,
                                     int srcSliceH, uint8_t* dst[], int dstStride[])
{
    int y, x;
    ptrdiff_t srcStrideFloat = srcStride[0] >> 2;
    const float *srcPtr = (const float *)src[0];
    uint8_t *dstPtr = dst[0] + dstStride[0] * srcSliceY;

    for (y = 0; y < srcSliceH; ++y){
        for (x = 0; x < c->srcW; ++x){
            dstPtr[x] = FUNC0(FUNC1(255.0f * srcPtr[x]));
        }
        srcPtr += srcStrideFloat;
        dstPtr += dstStride[0];
    }

    return srcSliceH;
}