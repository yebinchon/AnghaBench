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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ mbuf_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 size_t FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

void
FUNC4(const char *str, mbuf_t mb, uint32_t offset, uint32_t len)
{
	size_t i;
	int cout = 1;

	len = len ? len : ~0;
	FUNC3("%s mbuf = %p offset = %d len = %d:\n", str ? str : "mbuf", mb, offset, len);
	for (; mb && len; mb = FUNC2(mb)) {
		if (offset >= FUNC1(mb)) {
			offset -= FUNC1(mb);
			continue;
		}
		for(i = offset; len && i < FUNC1(mb); i++) {
			const char *s = (cout % 8) ? " " : (cout % 16) ? "    " : "\n";
			FUNC3("%02x%s", ((uint8_t *)FUNC0(mb))[i], s);
			len--;
			cout++;
		}
		offset = 0;
	}
	if ((cout-1) % 16)
		FUNC3("\n");
	FUNC3("Count chars %d\n", cout - 1);
}