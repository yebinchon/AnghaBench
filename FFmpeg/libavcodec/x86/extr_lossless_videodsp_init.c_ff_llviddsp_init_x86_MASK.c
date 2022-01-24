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
struct TYPE_3__ {int /*<<< orphan*/  add_gradient_pred; int /*<<< orphan*/  add_left_pred; int /*<<< orphan*/  add_bytes; int /*<<< orphan*/  add_left_pred_int16; int /*<<< orphan*/  add_median_pred; } ;
typedef  TYPE_1__ LLVidDSPContext ;

/* Variables and functions */
 scalar_t__ ARCH_X86_32 ; 
 int AV_CPU_FLAG_3DNOW ; 
 int AV_CPU_FLAG_CMOV ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  add_median_pred_cmov ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  ff_add_bytes_avx2 ; 
 int /*<<< orphan*/  ff_add_bytes_mmx ; 
 int /*<<< orphan*/  ff_add_bytes_sse2 ; 
 int /*<<< orphan*/  ff_add_gradient_pred_avx2 ; 
 int /*<<< orphan*/  ff_add_gradient_pred_ssse3 ; 
 int /*<<< orphan*/  ff_add_left_pred_int16_ssse3 ; 
 int /*<<< orphan*/  ff_add_left_pred_int16_unaligned_ssse3 ; 
 int /*<<< orphan*/  ff_add_left_pred_ssse3 ; 
 int /*<<< orphan*/  ff_add_left_pred_unaligned_avx2 ; 
 int /*<<< orphan*/  ff_add_left_pred_unaligned_ssse3 ; 
 int /*<<< orphan*/  ff_add_median_pred_mmxext ; 
 int /*<<< orphan*/  ff_add_median_pred_sse2 ; 

void FUNC7(LLVidDSPContext *c)
{
    int cpu_flags = FUNC6();

#if HAVE_INLINE_ASM && HAVE_7REGS && ARCH_X86_32
    if (cpu_flags & AV_CPU_FLAG_CMOV)
        c->add_median_pred = add_median_pred_cmov;
#endif

    if (ARCH_X86_32 && FUNC1(cpu_flags)) {
        c->add_bytes = ff_add_bytes_mmx;
    }

    if (ARCH_X86_32 && FUNC2(cpu_flags)) {
        /* slower than cmov version on AMD */
        if (!(cpu_flags & AV_CPU_FLAG_3DNOW))
            c->add_median_pred = ff_add_median_pred_mmxext;
    }

    if (FUNC3(cpu_flags)) {
        c->add_bytes       = ff_add_bytes_sse2;
        c->add_median_pred = ff_add_median_pred_sse2;
    }

    if (FUNC4(cpu_flags)) {
        c->add_left_pred = ff_add_left_pred_ssse3;
        c->add_left_pred_int16 = ff_add_left_pred_int16_ssse3;
        c->add_gradient_pred   = ff_add_gradient_pred_ssse3;
    }

    if (FUNC5(cpu_flags)) {
        c->add_left_pred = ff_add_left_pred_unaligned_ssse3;
        c->add_left_pred_int16 = ff_add_left_pred_int16_unaligned_ssse3;
    }

    if (FUNC0(cpu_flags)) {
        c->add_bytes       = ff_add_bytes_avx2;
        c->add_left_pred   = ff_add_left_pred_unaligned_avx2;
        c->add_gradient_pred = ff_add_gradient_pred_avx2;
    }
}