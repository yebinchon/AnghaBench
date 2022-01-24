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
typedef  int /*<<< orphan*/  av_pixelutils_sad_fn ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  ff_pixelutils_sad_16x16_mmxext ; 
 int /*<<< orphan*/  ff_pixelutils_sad_16x16_sse2 ; 
 int /*<<< orphan*/  ff_pixelutils_sad_32x32_avx2 ; 
 int /*<<< orphan*/  ff_pixelutils_sad_32x32_sse2 ; 
 int /*<<< orphan*/  ff_pixelutils_sad_8x8_mmx ; 
 int /*<<< orphan*/  ff_pixelutils_sad_8x8_mmxext ; 
 int /*<<< orphan*/  ff_pixelutils_sad_a_16x16_sse2 ; 
 int /*<<< orphan*/  ff_pixelutils_sad_a_32x32_avx2 ; 
 int /*<<< orphan*/  ff_pixelutils_sad_a_32x32_sse2 ; 
 int /*<<< orphan*/  ff_pixelutils_sad_u_16x16_sse2 ; 
 int /*<<< orphan*/  ff_pixelutils_sad_u_32x32_avx2 ; 
 int /*<<< orphan*/  ff_pixelutils_sad_u_32x32_sse2 ; 

void FUNC5(av_pixelutils_sad_fn *sad, int aligned)
{
    int cpu_flags = FUNC4();

    if (FUNC1(cpu_flags)) {
        sad[2] = ff_pixelutils_sad_8x8_mmx;
    }

    // The best way to use SSE2 would be to do 2 SADs in parallel,
    // but we'd have to modify the pixelutils API to return SIMD functions.

    // It's probably not faster to shuffle data around
    // to get two lines of 8 pixels into a single 16byte register,
    // so just use the MMX 8x8 version even when SSE2 is available.
    if (FUNC2(cpu_flags)) {
        sad[2] = ff_pixelutils_sad_8x8_mmxext;
        sad[3] = ff_pixelutils_sad_16x16_mmxext;
    }

    if (FUNC3(cpu_flags)) {
        switch (aligned) {
        case 0: sad[3] = ff_pixelutils_sad_16x16_sse2;   break; // src1 unaligned, src2 unaligned
        case 1: sad[3] = ff_pixelutils_sad_u_16x16_sse2; break; // src1   aligned, src2 unaligned
        case 2: sad[3] = ff_pixelutils_sad_a_16x16_sse2; break; // src1   aligned, src2   aligned
        }
    }

    if (FUNC3(cpu_flags)) {
        switch (aligned) {
        case 0: sad[4] = ff_pixelutils_sad_32x32_sse2;   break; // src1 unaligned, src2 unaligned
        case 1: sad[4] = ff_pixelutils_sad_u_32x32_sse2; break; // src1   aligned, src2 unaligned
        case 2: sad[4] = ff_pixelutils_sad_a_32x32_sse2; break; // src1   aligned, src2   aligned
        }
    }

    if (FUNC0(cpu_flags)) {
        switch (aligned) {
        case 0: sad[4] = ff_pixelutils_sad_32x32_avx2;   break; // src1 unaligned, src2 unaligned
        case 1: sad[4] = ff_pixelutils_sad_u_32x32_avx2; break; // src1   aligned, src2 unaligned
        case 2: sad[4] = ff_pixelutils_sad_a_32x32_avx2; break; // src1   aligned, src2   aligned
        }
    }
}