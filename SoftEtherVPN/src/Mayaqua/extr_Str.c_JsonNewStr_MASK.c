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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  JSON_VALUE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ) ; 

JSON_VALUE * FUNC5(char *string) {
	char *copy = NULL;
	JSON_VALUE *value;
	UINT string_len = 0;
	if (string == NULL) {
		return NULL;
	}
	string_len = FUNC0(string);
	if (!FUNC1(string, string_len)) {
		return NULL;
	}
	copy = FUNC4(string, string_len);
	if (copy == NULL) {
		return NULL;
	}
	value = FUNC2(copy);
	if (value == NULL) {
		FUNC3(copy);
	}
	return value;
}