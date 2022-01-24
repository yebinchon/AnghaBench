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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 

JSON_VALUE * FUNC4(char *string) {
	JSON_VALUE *result = NULL;
	char *string_mutable_copy = NULL, *string_mutable_copy_ptr = NULL;
	string_mutable_copy = FUNC2(string);
	if (string_mutable_copy == NULL) {
		return NULL;
	}
	FUNC3(string_mutable_copy, "/*", "*/");
	FUNC3(string_mutable_copy, "//", "\n");
	string_mutable_copy_ptr = string_mutable_copy;
	result = FUNC0((char**)&string_mutable_copy_ptr, 0);
	FUNC1(string_mutable_copy);
	return result;
}