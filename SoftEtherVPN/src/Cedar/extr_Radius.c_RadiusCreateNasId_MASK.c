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
typedef  char UCHAR ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

BUF *FUNC3(char *name)
{
	BUF *b;
	UCHAR code, size;
	// Validate arguments
	if (name == NULL)
	{
		return NULL;
	}
	if (FUNC1(name) == 0 || FUNC1(name) >= 128)
	{
		return NULL;
	}

	b = FUNC0();
	code = 32;
	size = 2 + (UCHAR)FUNC1(name);
	FUNC2(b, &code, 1);
	FUNC2(b, &size, 1);
	FUNC2(b, name, FUNC1(name));

	return b;
}