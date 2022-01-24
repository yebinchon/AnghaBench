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
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 

void FUNC5(BUF *b, char *name, void *data, UINT size)
{
	char *str;
	// Validate arguments
	if (b == NULL || name == NULL || (data == NULL && size != 0))
	{
		return;
	}

	str = FUNC2(size * 2 + 64);

	FUNC0(str, data, size);

	FUNC4(b, name, str, FUNC3(str));

	FUNC1(str);
}