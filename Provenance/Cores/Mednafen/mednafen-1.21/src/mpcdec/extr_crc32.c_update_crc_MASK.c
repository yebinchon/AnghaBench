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
 unsigned long* crc_table ; 
 int /*<<< orphan*/  crc_table_computed ; 
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static unsigned long FUNC1(unsigned long crc, unsigned char *buf, int len)
{
	unsigned long c = crc;
	int n;

	if (!crc_table_computed)
		FUNC0();
	for (n = 0; n < len; n++) {
		c = crc_table[(c ^ buf[n]) & 0xff] ^ (c >> 8);
	}
	return c;
}