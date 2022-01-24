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
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static JSON_VALUE * FUNC3(char **string) {
	UINT true_token_size = FUNC1("true");
	UINT false_token_size = FUNC1("false");
	if (FUNC2("true", *string, true_token_size) == 0) {
		*string += true_token_size;
		return FUNC0(1);
	}
	else if (FUNC2("false", *string, false_token_size) == 0) {
		*string += false_token_size;
		return FUNC0(0);
	}
	return NULL;
}