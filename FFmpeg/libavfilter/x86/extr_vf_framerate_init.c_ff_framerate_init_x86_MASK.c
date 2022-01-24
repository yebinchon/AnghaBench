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
struct TYPE_3__ {int bitdepth; int /*<<< orphan*/  blend; } ;
typedef  TYPE_1__ FrameRateContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  ff_blend_frames16_avx2 ; 
 int /*<<< orphan*/  ff_blend_frames16_sse4 ; 
 int /*<<< orphan*/  ff_blend_frames_avx2 ; 
 int /*<<< orphan*/  ff_blend_frames_ssse3 ; 

void FUNC4(FrameRateContext *s)
{
    int cpu_flags = FUNC3();
    if (s->bitdepth == 8) {
        if (FUNC0(cpu_flags))
            s->blend = ff_blend_frames_avx2;
        else if (FUNC2(cpu_flags))
            s->blend = ff_blend_frames_ssse3;
    } else {
        if (FUNC0(cpu_flags))
            s->blend = ff_blend_frames16_avx2;
        else if (FUNC1(cpu_flags))
            s->blend = ff_blend_frames16_sse4;
    }
}