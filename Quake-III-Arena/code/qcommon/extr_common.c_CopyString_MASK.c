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
typedef  int /*<<< orphan*/  memblock_t ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  emptystring ; 
 int /*<<< orphan*/ * numberstring ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 

char *FUNC3( const char *in ) {
	char	*out;

	if (!in[0]) {
		return ((char *)&emptystring) + sizeof(memblock_t);
	}
	else if (!in[1]) {
		if (in[0] >= '0' && in[0] <= '9') {
			return ((char *)&numberstring[in[0]-'0']) + sizeof(memblock_t);
		}
	}
	out = FUNC0 (FUNC2(in)+1);
	FUNC1 (out, in);
	return out;
}