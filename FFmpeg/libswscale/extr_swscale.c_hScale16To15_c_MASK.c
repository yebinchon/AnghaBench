#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
typedef  int int32_t ;
typedef  int int16_t ;
struct TYPE_8__ {int flags; TYPE_1__* comp; } ;
struct TYPE_7__ {scalar_t__ srcFormat; } ;
struct TYPE_6__ {int depth; } ;
typedef  TYPE_2__ SwsContext ;
typedef  TYPE_3__ AVPixFmtDescriptor ;

/* Variables and functions */
 int AV_PIX_FMT_FLAG_FLOAT ; 
 scalar_t__ AV_PIX_FMT_PAL8 ; 
 int FUNC0 (int,int) ; 
 TYPE_3__* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(SwsContext *c, int16_t *dst, int dstW,
                           const uint8_t *_src, const int16_t *filter,
                           const int32_t *filterPos, int filterSize)
{
    const AVPixFmtDescriptor *desc = FUNC1(c->srcFormat);
    int i;
    const uint16_t *src = (const uint16_t *) _src;
    int sh              = desc->comp[0].depth - 1;

    if (sh<15) {
        sh = FUNC2(c->srcFormat) || c->srcFormat==AV_PIX_FMT_PAL8 ? 13 : (desc->comp[0].depth - 1);
    } else if (desc->flags & AV_PIX_FMT_FLAG_FLOAT) { /* float input are process like uint 16bpc */
        sh = 16 - 1;
    }

    for (i = 0; i < dstW; i++) {
        int j;
        int srcPos = filterPos[i];
        int val    = 0;

        for (j = 0; j < filterSize; j++) {
            val += src[srcPos + j] * filter[filterSize * i + j];
        }
        // filter=14 bit, input=16 bit, output=30 bit, >> 15 makes 15 bit
        dst[i] = FUNC0(val >> sh, (1 << 15) - 1);
    }
}