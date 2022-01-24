#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int netagent_flags; } ;
struct netagent_wrapper {TYPE_1__ netagent; int /*<<< orphan*/  pending_triggers_list; scalar_t__ generation; int /*<<< orphan*/  event_context; int /*<<< orphan*/  event_handler; int /*<<< orphan*/  control_unit; } ;
struct netagent_session {struct netagent_wrapper* wrapper; int /*<<< orphan*/  event_context; int /*<<< orphan*/  event_handler; int /*<<< orphan*/  control_unit; } ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct netagent_wrapper*,int /*<<< orphan*/ ) ; 
 int NETAGENT_FLAG_ACTIVE ; 
 int NETAGENT_FLAG_REGISTERED ; 
 int /*<<< orphan*/  g_next_generation ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  master_chain ; 
 int /*<<< orphan*/  master_netagent_list ; 
 int /*<<< orphan*/  netagent_active_count ; 
 int /*<<< orphan*/  netagent_lock ; 
 int /*<<< orphan*/  netagent_registered_count ; 

__attribute__((used)) static errno_t
FUNC4(struct netagent_session *session, struct netagent_wrapper *new_wrapper)
{
	FUNC3(&netagent_lock);

	new_wrapper->control_unit = session->control_unit;
	new_wrapper->event_handler = session->event_handler;
	new_wrapper->event_context = session->event_context;
	new_wrapper->generation = g_next_generation++;

	session->wrapper = new_wrapper;
	FUNC1(&master_netagent_list, new_wrapper, master_chain);
	FUNC0(&new_wrapper->pending_triggers_list);

	new_wrapper->netagent.netagent_flags |= NETAGENT_FLAG_REGISTERED;
	netagent_registered_count++;
	if (new_wrapper->netagent.netagent_flags & NETAGENT_FLAG_ACTIVE) {
		netagent_active_count++;
	}

	FUNC2(&netagent_lock);

	return 0;
}