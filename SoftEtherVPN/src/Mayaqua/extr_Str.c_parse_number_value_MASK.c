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
typedef  int /*<<< orphan*/  UINT64 ;
typedef  int /*<<< orphan*/  JSON_VALUE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char**,int*) ; 

__attribute__((used)) static JSON_VALUE * FUNC2(char **string) {
	char *end;
	bool error = false;
	UINT64 number = 0;
	number = FUNC1(*string, &end, &error);

	if (error)
	{
		return NULL;
	}
	*string = end;
	return FUNC0(number);
}