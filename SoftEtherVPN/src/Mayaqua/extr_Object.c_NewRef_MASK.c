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
struct TYPE_4__ {int /*<<< orphan*/  c; } ;
typedef  TYPE_1__ REF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KS_ADDREF_COUNT ; 
 int /*<<< orphan*/  KS_CURRENT_REFED_COUNT ; 
 int /*<<< orphan*/  KS_CURRENT_REF_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KS_NEWREF_COUNT ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

REF *FUNC4()
{
	REF *ref;

	// Memory allocation
	ref = FUNC2(sizeof(REF));

	// Create a Counter
	ref->c = FUNC3();

	// Increment only once
	FUNC0(ref->c);

	// KS
	FUNC1(KS_NEWREF_COUNT);
	FUNC1(KS_CURRENT_REF_COUNT);
	FUNC1(KS_ADDREF_COUNT);
	FUNC1(KS_CURRENT_REFED_COUNT);

	return ref;
}