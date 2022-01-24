#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  TYPE_1__* coalition_t ;
struct TYPE_7__ {size_t type; int termrequested; scalar_t__ active_count; int ref_count; int /*<<< orphan*/  coalitions; scalar_t__ reaped; int /*<<< orphan*/  terminated; } ;

/* Variables and functions */
 size_t COALITION_TYPE_MAX ; 
 int /*<<< orphan*/  KERN_DEFAULT_SET ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  KERN_TERMINATED ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  coalition_count ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  coalitions_list_lock ; 
 TYPE_1__** init_coalition ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

kern_return_t
FUNC7(coalition_t coal)
{
	FUNC0(coal->type <= COALITION_TYPE_MAX);

	if (coal == init_coalition[coal->type]) {
		return KERN_DEFAULT_SET;
	}

	FUNC1(coal);
	if (coal->reaped) {
		FUNC3(coal);
		return KERN_TERMINATED;
	}
	if (!coal->terminated) {
		FUNC3(coal);
		return KERN_FAILURE;
	}
	FUNC0(coal->termrequested);
	if (coal->active_count > 0) {
		FUNC3(coal);
		return KERN_FAILURE;
	}

	coal->reaped = TRUE;

	/* Caller, launchd, and coalitions list should each have a reference */
	FUNC0(coal->ref_count > 2);

	FUNC3(coal);

	FUNC4(&coalitions_list_lock);
	coalition_count--;
	FUNC6(&coal->coalitions);
	FUNC5(&coalitions_list_lock);

	/* Release the list's reference and launchd's reference. */
	FUNC2(coal);
	FUNC2(coal);

	return KERN_SUCCESS;
}