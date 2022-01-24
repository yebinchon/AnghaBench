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
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 

BUF *FUNC7(PACK *p, char *name, UINT index)
{
	UINT size;
	void *tmp;
	BUF *b;
	// Validate arguments
	if (p == NULL || name == NULL)
	{
		return NULL;
	}

	size = FUNC4(p, name, index);
	tmp = FUNC1(size, true);
	if (FUNC3(p, name, tmp, index) == false)
	{
		FUNC0(tmp);
		return NULL;
	}

	b = FUNC2();
	FUNC6(b, tmp, size);
	FUNC5(b, 0, 0);

	FUNC0(tmp);

	return b;
}