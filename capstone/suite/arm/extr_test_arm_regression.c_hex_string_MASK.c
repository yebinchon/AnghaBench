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
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,unsigned char) ; 

__attribute__((used)) static char *FUNC2(unsigned char *str, size_t len)
{
	// returns a malloced string that has the hex version of the string in it
	// null if failed to malloc
	char *hex_out;
	size_t i;

	hex_out = (char *) FUNC0(len*2 + 1); // two ascii characters per input character, plus trailing null
	if (!hex_out) { goto Exit; }

	for (i = 0; i < len; ++i) {
		FUNC1(hex_out + (i*2), 2, "%02x", str[i]);
	}

	hex_out[len*2] = 0; // trailing null

Exit:
	return hex_out;
}