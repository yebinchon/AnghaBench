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

int FUNC0(const unsigned char *buf, int size)
{
	const unsigned char *p, *pe;

	/* find byte-aligned syncword - need 12 (MPEG 1,2) or 11 (MPEG 2.5) matching bits */
	for (p = buf, pe = buf + size - 3; p <= pe; p++)
	{
		int pn;
		if (p[0] != 0xff)
			continue;
		pn = p[1];
		if ((pn & 0xf8) != 0xf8 || // currently must be MPEG1
		    (pn & 6) == 0) {       // invalid layer
			p++; continue;
		}
		pn = p[2];
		if ((pn & 0xf0) < 0x20 || (pn & 0xf0) == 0xf0 || // bitrates
		    (pn & 0x0c) != 0) { // not 44kHz
			continue;
		}

		return p - buf;
	}

	return -1;
}