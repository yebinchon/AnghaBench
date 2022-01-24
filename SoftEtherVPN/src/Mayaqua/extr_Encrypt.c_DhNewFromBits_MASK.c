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
typedef  int /*<<< orphan*/  DH_CTX ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 () ; 

DH_CTX *FUNC7(UINT bits)
{
	switch (bits)
	{
	case 160:
		return FUNC6();
	case 768:
		return FUNC3();
	case 1024:
		return FUNC4();
	case 1536:
		return FUNC5();
	case 2048:
		return FUNC0();
	case 3072:
		return FUNC1();
	case 4096:
		return FUNC2();
	default:
		return FUNC0();
	}
}