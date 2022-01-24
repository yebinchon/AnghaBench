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
struct coalition {int type; int role; int ref_count; int should_notify; scalar_t__ id; int /*<<< orphan*/  coalitions; int /*<<< orphan*/  lock; int /*<<< orphan*/  privileged; } ;
typedef  scalar_t__ kern_return_t ;
typedef  struct coalition* coalition_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 struct coalition* COALITION_NULL ; 
 int COALITION_TYPE_MAX ; 
 int /*<<< orphan*/  DBG_MACH_COALITION ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ KERN_INVALID_ARGUMENT ; 
 scalar_t__ KERN_RESOURCE_SHORTAGE ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MACH_COALITION_NEW ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (struct coalition*,int) ; 
 scalar_t__ FUNC3 (struct coalition*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  coalition_count ; 
 int /*<<< orphan*/  coalition_next_id ; 
 int /*<<< orphan*/  coalition_zone ; 
 int /*<<< orphan*/  coalitions_lck_attr ; 
 int /*<<< orphan*/  coalitions_lck_grp ; 
 int /*<<< orphan*/  coalitions_list_lock ; 
 int /*<<< orphan*/  coalitions_q ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  init ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct coalition*) ; 

kern_return_t
FUNC12(int type, int role, boolean_t privileged, coalition_t *out)
{
	kern_return_t kr;
	struct coalition *new_coal;

	if (type < 0 || type > COALITION_TYPE_MAX)
		return KERN_INVALID_ARGUMENT;

	new_coal = (struct coalition *)FUNC10(coalition_zone);
	if (new_coal == COALITION_NULL)
		return KERN_RESOURCE_SHORTAGE;
	FUNC2(new_coal, sizeof(*new_coal));

	new_coal->type = type;
	new_coal->role = role;

	/* initialize type-specific resources */
	kr = FUNC3(new_coal, init, privileged);
	if (kr != KERN_SUCCESS) {
		FUNC11(coalition_zone, new_coal);
		return kr;
	}

	/* One for caller, one for coalitions list */
	new_coal->ref_count = 2;

	new_coal->privileged = privileged ? TRUE : FALSE;
#if DEVELOPMENT || DEBUG
	new_coal->should_notify = 1;
#endif

	FUNC7(&new_coal->lock, &coalitions_lck_grp, &coalitions_lck_attr);

	FUNC8(&coalitions_list_lock);
	new_coal->id = coalition_next_id++;
	coalition_count++;
	FUNC6(&coalitions_q, &new_coal->coalitions);

	FUNC0(FUNC1(DBG_MACH_COALITION, MACH_COALITION_NEW),
		new_coal->id, new_coal->type);
	FUNC9(&coalitions_list_lock);

	FUNC4("id:%llu, type:%s", new_coal->id, FUNC5(new_coal->type));

	*out = new_coal;
	return KERN_SUCCESS;
}