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
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 size_t FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,size_t) ; 

void FUNC5(BUF *b, char *name, char *value)
{
	char tmp[MAX_SIZE * 2];
	char *p = NULL;
	// Validate arguments
	if (b == NULL || value == NULL)
	{
		return;
	}

	if (FUNC0(value))
	{
		return;
	}

	tmp[0] = 0;

	if (FUNC0(name) == false)
	{
		p = &tmp[FUNC3(tmp)];
		FUNC2(tmp, sizeof(tmp), name);
		FUNC1(p);
		FUNC2(tmp, sizeof(tmp), "=");
	}

	p = &tmp[FUNC3(tmp)];
	FUNC2(tmp, sizeof(tmp), value);
	FUNC1(p);
	FUNC2(tmp, sizeof(tmp), " ");

	FUNC4(b, tmp, FUNC3(tmp));
}