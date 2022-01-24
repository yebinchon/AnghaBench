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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*,void const*,void const*,void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,void const*,void const*,void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,void const*,void const*,void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,void const*,void const*,void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,void const*,void const*,void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (void*,void*,void const*,void const*,void const*,unsigned int) ; 

__attribute__((used)) static inline void FUNC6(void* dst0, void* dst1, const void* src0, const void* src1, const void* src2, unsigned pixel, unsigned pixel_per_row)
{
	switch (pixel) {
#if defined(__GNUC__) && defined(__i386__)
		case 1 : scale2x_8_mmx(dst0, dst1, src0, src1, src2, pixel_per_row); break;
		case 2 : scale2x_16_mmx(dst0, dst1, src0, src1, src2, pixel_per_row); break;
		case 4 : scale2x_32_mmx(dst0, dst1, src0, src1, src2, pixel_per_row); break;
#else
		case 1 : FUNC4(dst0, dst1, src0, src1, src2, pixel_per_row); break;
		case 2 : FUNC0(dst0, dst1, src0, src1, src2, pixel_per_row); break;
		case 4 : FUNC2(dst0, dst1, src0, src1, src2, pixel_per_row); break;
#endif
	}
}