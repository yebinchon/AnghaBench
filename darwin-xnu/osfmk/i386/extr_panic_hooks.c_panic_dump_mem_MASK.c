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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  WK_word ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char*,void const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int* panic_dump_buf ; 

void FUNC4(const void *addr, int len)
{
	void *scratch = panic_dump_buf + 4096;

	for (; len > 0; addr = (const uint8_t *)addr + PAGE_SIZE, len -= PAGE_SIZE) {
		if (!FUNC3((vm_offset_t)addr))
			continue;

		// 4095 is multiple of 3 -- see below
		int n = FUNC0((const WK_word *)addr, (WK_word *)(void *)panic_dump_buf,
								  scratch, 4095);

		if (n == -1)
			return; // Give up

		FUNC2("%p: ", addr);

		// Dump out base64
		static char base64_table[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
			"abcdefghijklmnopqrstuvwxyz0123456789+/";

		// Pad to multiple of 3
		switch (n % 3) {
		case 1:
			panic_dump_buf[n++] = 0;
		case 2:
			panic_dump_buf[n++] = 0;
		}

		uint8_t *p = panic_dump_buf;
		while (n) {
			uint8_t c;

			c = p[0] >> 2;
			FUNC1(base64_table[c]);

			c = (p[0] << 4 | p[1] >> 4) & 0x3f;
			FUNC1(base64_table[c]);

			c = (p[1] << 2 | p[2] >> 6) & 0x3f;
			FUNC1(base64_table[c]);

			c = p[2] & 0x3f;
			FUNC1(base64_table[c]);

			p += 3;
			n -= 3;
		}

		FUNC1('\n');
	}
}