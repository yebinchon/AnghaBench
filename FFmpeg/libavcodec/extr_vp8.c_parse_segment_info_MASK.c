#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* update_map; void** filter_level; void** base_quant; void* absolute_vals; void* update_feature_data; } ;
struct TYPE_7__ {TYPE_2__* prob; TYPE_1__ segmentation; int /*<<< orphan*/  c; } ;
typedef  TYPE_3__ VP8Context ;
typedef  int /*<<< orphan*/  VP56RangeCoder ;
struct TYPE_6__ {int* segmentid; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(VP8Context *s)
{
    VP56RangeCoder *c = &s->c;
    int i;

    s->segmentation.update_map = FUNC0(c);
    s->segmentation.update_feature_data = FUNC0(c);

    if (s->segmentation.update_feature_data) {
        s->segmentation.absolute_vals = FUNC0(c);

        for (i = 0; i < 4; i++)
            s->segmentation.base_quant[i]   = FUNC1(c, 7);

        for (i = 0; i < 4; i++)
            s->segmentation.filter_level[i] = FUNC1(c, 6);
    }
    if (s->segmentation.update_map)
        for (i = 0; i < 3; i++)
            s->prob->segmentid[i] = FUNC0(c) ? FUNC2(c, 8) : 255;
}