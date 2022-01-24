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
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (void*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(void *data)
{
	char name[MAX_PATH];
	char *p;

	// Validate arguments
	if (data == NULL)
	{
		return;
	}

	FUNC0(name, sizeof(name));

	// Ignore after first period(.)
	for(p=name; *p; p++)
		if(*p == '.')
			*p = 0;

	FUNC4(name);
	FUNC3(name);

	FUNC1(data, name, FUNC2(name));
}