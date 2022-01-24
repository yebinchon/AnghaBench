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
struct TYPE_3__ {int /*<<< orphan*/  sse_line; } ;
typedef  TYPE_1__ PSNRDSPContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  ff_sse_line_16bit_sse2 ; 
 int /*<<< orphan*/  ff_sse_line_8bit_sse2 ; 

void FUNC2(PSNRDSPContext *dsp, int bpp)
{
    int cpu_flags = FUNC1();

    if (FUNC0(cpu_flags)) {
        if (bpp <= 8) {
            dsp->sse_line = ff_sse_line_8bit_sse2;
        } else if (bpp <= 15) {
            dsp->sse_line = ff_sse_line_16bit_sse2;
        }
    }
}