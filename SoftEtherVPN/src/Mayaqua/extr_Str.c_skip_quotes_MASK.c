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

/* Variables and functions */
 int /*<<< orphan*/  JSON_RET_ERROR ; 
 int /*<<< orphan*/  JSON_RET_OK ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 

__attribute__((used)) static UINT FUNC1(char **string) {
	if (**string != '\"') {
		return JSON_RET_ERROR;
	}
	FUNC0(string);
	while (**string != '\"') {
		if (**string == '\0') {
			return JSON_RET_ERROR;
		}
		else if (**string == '\\') {
			FUNC0(string);
			if (**string == '\0') {
				return JSON_RET_ERROR;
			}
		}
		FUNC0(string);
	}
	FUNC0(string);
	return JSON_RET_OK;
}