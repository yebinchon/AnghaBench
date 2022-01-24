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
typedef  int /*<<< orphan*/  uuid_t ;
struct TYPE_2__ {int netagent_flags; int /*<<< orphan*/  netagent_uuid; } ;
struct netagent_wrapper {TYPE_1__ netagent; } ;
struct netagent_session {struct netagent_wrapper* wrapper; } ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  KEV_NETAGENT_UNREGISTERED ; 
 int /*<<< orphan*/  FUNC0 (struct netagent_wrapper*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int NETAGENT_FLAG_ACTIVE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  master_chain ; 
 scalar_t__ netagent_active_count ; 
 int /*<<< orphan*/  FUNC5 (struct netagent_wrapper*) ; 
 int /*<<< orphan*/  netagent_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ netagent_registered_count ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct netagent_session *session)
{
	bool unregistered = FALSE;
	uuid_t unregistered_uuid;
	struct netagent_wrapper *wrapper = NULL;
	FUNC4(&netagent_lock);
	if (session != NULL) {
		wrapper = session->wrapper;
		if (wrapper != NULL) {
			if (netagent_registered_count > 0) {
				netagent_registered_count--;
			}
			if ((session->wrapper->netagent.netagent_flags & NETAGENT_FLAG_ACTIVE) &&
				netagent_active_count > 0) {
				netagent_active_count--;
			}

			FUNC0(wrapper, master_chain);

			unregistered = TRUE;
			FUNC7(unregistered_uuid, session->wrapper->netagent.netagent_uuid);

			FUNC5(session->wrapper);
			session->wrapper = NULL;
			FUNC1(LOG_DEBUG, "Unregistered agent");
		}
	}
	FUNC3(&netagent_lock);

	if (unregistered) {
		FUNC2(unregistered_uuid);
		FUNC6(unregistered_uuid, KEV_NETAGENT_UNREGISTERED, TRUE);
	}
}