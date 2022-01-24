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
typedef  int /*<<< orphan*/  bad_names ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,scalar_t__) ; 

int FUNC2(const char *name, int len) {
	const char *bad_names[] = { "System" };
	int   bad_len[]   = { 6 };
	int  i;

	for(i=0; i < (int) (sizeof(bad_names) / sizeof(bad_names[0])); i++) {
		if (len == bad_len[i] && FUNC1(name, bad_names[i], FUNC0(bad_names[i]) + 1) == 0) {
			return 1;
		}
	}

	// if we get here, no name matched
	return 0;
}