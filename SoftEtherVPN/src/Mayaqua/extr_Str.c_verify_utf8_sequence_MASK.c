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
 scalar_t__ FUNC0 (unsigned char) ; 
 int FUNC1 (unsigned char) ; 

__attribute__((used)) static int FUNC2(unsigned char *string, int *len) {
	unsigned int cp = 0;
	*len = FUNC1(string[0]);

	if (*len == 1) {
		cp = string[0];
	}
	else if (*len == 2 && FUNC0(string[1])) {
		cp = string[0] & 0x1F;
		cp = (cp << 6) | (string[1] & 0x3F);
	}
	else if (*len == 3 && FUNC0(string[1]) && FUNC0(string[2])) {
		cp = ((unsigned char)string[0]) & 0xF;
		cp = (cp << 6) | (string[1] & 0x3F);
		cp = (cp << 6) | (string[2] & 0x3F);
	}
	else if (*len == 4 && FUNC0(string[1]) && FUNC0(string[2]) && FUNC0(string[3])) {
		cp = string[0] & 0x7;
		cp = (cp << 6) | (string[1] & 0x3F);
		cp = (cp << 6) | (string[2] & 0x3F);
		cp = (cp << 6) | (string[3] & 0x3F);
	}
	else {
		return 0;
	}

	/* overlong encodings */
	if ((cp < 0x80 && *len > 1) ||
		(cp < 0x800 && *len > 2) ||
		(cp < 0x10000 && *len > 3)) {
			return 0;
	}

	/* invalid unicode */
	if (cp > 0x10FFFF) {
		return 0;
	}

	/* surrogate halves */
	if (cp >= 0xD800 && cp <= 0xDFFF) {
		return 0;
	}

	return 1;
}