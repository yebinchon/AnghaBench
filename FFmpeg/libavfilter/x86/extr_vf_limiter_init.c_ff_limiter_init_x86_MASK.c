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
struct TYPE_3__ {int /*<<< orphan*/  limiter; } ;
typedef  TYPE_1__ LimiterDSPContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  ff_limiter_16bit_sse4 ; 
 int /*<<< orphan*/  ff_limiter_8bit_sse2 ; 

void FUNC3(LimiterDSPContext *dsp, int bpp)
{
    int cpu_flags = FUNC2();

    if (FUNC0(cpu_flags)) {
        if (bpp <= 8) {
            dsp->limiter = ff_limiter_8bit_sse2;
        }
    }
    if (FUNC1(cpu_flags)) {
        if (bpp > 8) {
            dsp->limiter = ff_limiter_16bit_sse4;
        }
    }
}