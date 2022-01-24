#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int int32_t ;
typedef  int /*<<< orphan*/  OpusRangeCoder ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__* ff_silk_model_pulse_location ; 

__attribute__((used)) static inline void FUNC1(OpusRangeCoder *rc, int model, int32_t total,
                                       int32_t child[2])
{
    if (total != 0) {
        child[0] = FUNC0(rc,
                       ff_silk_model_pulse_location[model] + (((total - 1 + 5) * (total - 1)) >> 1));
        child[1] = total - child[0];
    } else {
        child[0] = 0;
        child[1] = 0;
    }
}