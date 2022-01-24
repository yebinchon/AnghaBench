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
struct TYPE_3__ {int /*<<< orphan*/  ssim_4x4_line; int /*<<< orphan*/  ssim_end_line; } ;
typedef  TYPE_1__ SSIMDSPContext ;

/* Variables and functions */
 scalar_t__ ARCH_X86_64 ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  ff_ssim_4x4_line_ssse3 ; 
 int /*<<< orphan*/  ff_ssim_4x4_line_xop ; 
 int /*<<< orphan*/  ff_ssim_end_line_sse4 ; 

void FUNC4(SSIMDSPContext *dsp)
{
    int cpu_flags = FUNC3();

    if (ARCH_X86_64 && FUNC1(cpu_flags))
        dsp->ssim_4x4_line = ff_ssim_4x4_line_ssse3;
    if (FUNC0(cpu_flags))
        dsp->ssim_end_line = ff_ssim_end_line_sse4;
    if (FUNC2(cpu_flags))
        dsp->ssim_4x4_line = ff_ssim_4x4_line_xop;
}