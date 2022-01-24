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
 unsigned char* FUNC0 (int) ; 
 unsigned char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,unsigned char*,unsigned char*,unsigned char*,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC5(void* void_dst, unsigned dst_slice, const void* void_src, unsigned src_slice, unsigned pixel, unsigned width, unsigned height)
{
	unsigned char* dst = (unsigned char*)void_dst;
	const unsigned char* src = (unsigned char*)void_src;
	unsigned count;

	FUNC2(height >= 2);

	count = height;

	FUNC4(FUNC0(0), FUNC0(1), FUNC1(0), FUNC1(0), FUNC1(1), pixel, width);

	dst = FUNC0(2);

	count -= 2;
	while (count) {
		FUNC4(FUNC0(0), FUNC0(1), FUNC1(0), FUNC1(1), FUNC1(2), pixel, width);

		dst = FUNC0(2);
		src = FUNC1(1);

		--count;
	}

	FUNC4(FUNC0(0), FUNC0(1), FUNC1(1-1), FUNC1(2-1), FUNC1(2-1), pixel, width);

#if defined(__GNUC__) && defined(__i386__)
	scale2x_mmx_emms();
#endif
}