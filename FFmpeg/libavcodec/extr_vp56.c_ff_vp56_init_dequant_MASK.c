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
struct TYPE_3__ {int quantizer; int dequant_dc; int dequant_ac; int /*<<< orphan*/  bounding_values_array; } ;
typedef  TYPE_1__ VP56Context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* ff_vp56_ac_dequant ; 
 int* ff_vp56_dc_dequant ; 
 int /*<<< orphan*/ * ff_vp56_filter_threshold ; 

void FUNC1(VP56Context *s, int quantizer)
{
    if (s->quantizer != quantizer)
        FUNC0(s->bounding_values_array, ff_vp56_filter_threshold[quantizer]);
    s->quantizer = quantizer;
    s->dequant_dc = ff_vp56_dc_dequant[quantizer] << 2;
    s->dequant_ac = ff_vp56_ac_dequant[quantizer] << 2;
}