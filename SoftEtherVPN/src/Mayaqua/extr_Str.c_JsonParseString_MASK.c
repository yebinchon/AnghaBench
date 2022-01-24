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
typedef  int /*<<< orphan*/  JSON_VALUE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char**,int /*<<< orphan*/ ) ; 

JSON_VALUE * FUNC1(char *string) {
	if (string == NULL) {
		return NULL;
	}
	if (string[0] == '\xEF' && string[1] == '\xBB' && string[2] == '\xBF') {
		string = string + 3; /* Support for UTF-8 BOM */
	}
	return FUNC0((char**)&string, 0);
}