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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_7__ {int width; int height; int /*<<< orphan*/  vmafdsp; int /*<<< orphan*/ * filter; void* temp_data; void** blur_data; scalar_t__ stride; } ;
typedef  TYPE_2__ VMAFMotionData ;
struct TYPE_8__ {TYPE_1__* comp; } ;
struct TYPE_6__ {int /*<<< orphan*/  depth; } ;
typedef  TYPE_3__ AVPixFmtDescriptor ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int BIT_SHIFT ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC1 (int,int) ; 
 int* FILTER_5 ; 
 void* FUNC2 (size_t) ; 
 TYPE_3__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC6(VMAFMotionData *s,
                       int w, int h, enum AVPixelFormat fmt)
{
    size_t data_sz;
    int i;
    const AVPixFmtDescriptor *desc = FUNC3(fmt);

    s->width = w;
    s->height = h;
    s->stride = FUNC1(w * sizeof(uint16_t), 32);

    data_sz = (size_t) s->stride * h;
    if (!(s->blur_data[0] = FUNC2(data_sz)) ||
        !(s->blur_data[1] = FUNC2(data_sz)) ||
        !(s->temp_data    = FUNC2(data_sz))) {
        return FUNC0(ENOMEM);
    }

    for (i = 0; i < 5; i++) {
        s->filter[i] = FUNC4(FILTER_5[i] * (1 << BIT_SHIFT));
    }

    FUNC5(&s->vmafdsp, desc->comp[0].depth);

    return 0;
}