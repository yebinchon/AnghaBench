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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  P12 ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

bool FUNC3(P12 *p12, wchar_t *filename)
{
	BUF *b;
	// Validate arguments
	if (p12 == NULL || filename == NULL)
	{
		return false;
	}

	b = FUNC2(p12);
	if (b == NULL)
	{
		return false;
	}

	if (FUNC0(b, filename) == false)
	{
		FUNC1(b);
		return false;
	}

	FUNC1(b);

	return true;
}