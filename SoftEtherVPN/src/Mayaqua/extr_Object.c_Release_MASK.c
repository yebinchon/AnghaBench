#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_4__ {scalar_t__ c; } ;
typedef  TYPE_1__ REF ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  KS_CURRENT_REFED_COUNT ; 
 int /*<<< orphan*/  KS_CURRENT_REF_COUNT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KS_FREEREF_COUNT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KS_RELEASE_COUNT ; 

UINT FUNC5(REF *ref)
{
	UINT c;
	// Validate arguments
	if (ref == NULL)
	{
		return 0;
	}

	// KS
	FUNC4(KS_RELEASE_COUNT);
	FUNC3(KS_CURRENT_REFED_COUNT);

	c = FUNC0(ref->c);
	if (c == 0)
	{
		// KS
		FUNC3(KS_CURRENT_REF_COUNT);
		FUNC4(KS_FREEREF_COUNT);

		FUNC1(ref->c);
		ref->c = 0;
		FUNC2(ref);
	}
	return c;
}