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
 int /*<<< orphan*/  FUNC0 (void*,void*,void*,void const*,void const*,void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,void*,void const*,void const*,void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,void*,void const*,void const*,void const*,unsigned int) ; 

__attribute__((used)) static inline void FUNC3(void* dst0, void* dst1, void* dst2, const void* src0, const void* src1, const void* src2, unsigned pixel, unsigned pixel_per_row)
{
	switch (pixel) {
		case 1 : FUNC2(dst0, dst1, dst2, src0, src1, src2, pixel_per_row); break;
		case 2 : FUNC0(dst0, dst1, dst2, src0, src1, src2, pixel_per_row); break;
		case 4 : FUNC1(dst0, dst1, dst2, src0, src1, src2, pixel_per_row); break;
	}
}