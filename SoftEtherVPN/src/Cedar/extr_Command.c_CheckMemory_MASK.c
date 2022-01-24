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
typedef  int UINT ;
typedef  int UCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void**) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (void*,int) ; 
 void* FUNC3 (int) ; 

bool FUNC4()
{
	UINT i, num, size, j;
	void **pp;
	bool ok = true;
	UINT old_size;

	num = 2000;
	size = 1000;
	pp = FUNC3(sizeof(void *) * num);
	for (i = 0;i < num;i++)
	{
		pp[i] = FUNC3(size);
		FUNC1(pp[i]);
		for (j = 0;j < size;j++)
		{
			((UCHAR *)pp[i])[j] = j % 256;
		}
	}
	old_size = size;
	size = size * 3;
	for (i = 0;i < num;i++)
	{
		pp[i] = FUNC2(pp[i], size);
		for (j = old_size;j < size;j++)
		{
			FUNC1((void *)(UINT)(((UCHAR *)pp[i])[j] = j % 256));
		}
	}
	for (i = 0;i < num;i++)
	{
		for (j = 0;j < size;j++)
		{
			if (((UCHAR *)pp[i])[j] != (j % 256))
			{
				ok = false;
			}
		}
		FUNC0(pp[i]);
	}
	FUNC0(pp);

	return ok;
}