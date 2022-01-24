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
 int /*<<< orphan*/  FUNC0 (char**,char*,...) ; 

__attribute__((used)) static void FUNC1(char **result, const char *comment, unsigned char *str, size_t len)
{
	unsigned char *c;

	FUNC0(result, "%s", comment);
	for (c = str; c < str + len; c++) {
		FUNC0(result, "0x%02x", *c & 0xff);
		if (c < str + len - 1)
			FUNC0(result, " ");
	}

}