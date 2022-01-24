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
typedef  int /*<<< orphan*/  FOLDER ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG_CPYRIGHT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BUF *FUNC4(FOLDER *f, bool no_banner)
{
	BUF *b;
	// Validate arguments
	if (f == NULL)
	{
		return NULL;
	}

	// Create a stream
	b = FUNC1();

	// Copyright notice
	if (no_banner == false)
	{
		FUNC3(b, TAG_CPYRIGHT, FUNC2(TAG_CPYRIGHT));
	}

	// Output the root folder (recursive)
	FUNC0(b, f, 0);

	return b;
}