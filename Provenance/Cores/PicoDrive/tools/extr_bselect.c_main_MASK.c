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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int* active ; 
 int activec ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * ptr ; 
 int ptrc ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(int argc, char *argv[])
{
	int i, u, b, c;
	FILE *f;


	FUNC7(FUNC8(NULL));

	ptrc = argc - 1;

	/*
	 * read data
	 */

	for (i = 0; i < ptrc; i++)
	{
		ptr[i] = FUNC4(0x800);
		f = FUNC2(argv[i + 1], "rb");
		FUNC3(ptr[i], 1, 0x800, f);
		FUNC0(f);
		active[i] = i;
	}
	activec = ptrc;

	while (activec > 0)
	{
		FUNC1();
		FUNC6();
		FUNC5();
	}

	return 0;
}