#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  enum dwt_type { ____Placeholder_dwt_type } dwt_type ;
struct TYPE_10__ {int decomposition_count; int /*<<< orphan*/  temp; int /*<<< orphan*/  stride; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  buffer; } ;
struct TYPE_9__ {int /*<<< orphan*/  tmp; int /*<<< orphan*/  stride; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ DWTPlane ;
typedef  TYPE_2__ DWTContext ;

/* Variables and functions */
 scalar_t__ ARCH_X86 ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (TYPE_2__*,int) ; 
 int FUNC2 (TYPE_2__*,int) ; 
 int FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 

int FUNC5(DWTContext *d, DWTPlane *p, enum dwt_type type,
                         int decomposition_count, int bit_depth)
{
    int ret = 0;

    d->buffer = p->buf;
    d->width  = p->width;
    d->height = p->height;
    d->stride = p->stride;
    d->temp   = p->tmp;
    d->decomposition_count = decomposition_count;

    if (bit_depth == 8)
        ret = FUNC3(d, type);
    else if (bit_depth == 10)
        ret = FUNC1(d, type);
    else if (bit_depth == 12)
        ret = FUNC2(d, type);
    else
        FUNC0(NULL, AV_LOG_WARNING, "Unsupported bit depth = %i\n", bit_depth);

    if (ret) {
        FUNC0(NULL, AV_LOG_ERROR, "Unknown wavelet type %d\n", type);
        return AVERROR_INVALIDDATA;
    }

    if (ARCH_X86 && bit_depth == 8)
        FUNC4(d, type);
    return 0;
}