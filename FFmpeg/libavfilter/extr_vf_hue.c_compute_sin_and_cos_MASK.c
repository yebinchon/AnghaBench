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
struct TYPE_3__ {int saturation; int /*<<< orphan*/  hue; void* hue_cos; void* hue_sin; } ;
typedef  TYPE_1__ HueContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(HueContext *hue)
{
    /*
     * Scale the value to the norm of the resulting (U,V) vector, that is
     * the saturation.
     * This will be useful in the apply_lut function.
     */
    hue->hue_sin = FUNC1(FUNC2(hue->hue) * (1 << 16) * hue->saturation);
    hue->hue_cos = FUNC1(FUNC0(hue->hue) * (1 << 16) * hue->saturation);
}