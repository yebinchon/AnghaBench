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
typedef  int /*<<< orphan*/  uuid_t ;
struct netagent_wrapper {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEV_NETAGENT_UPDATED_INTERFACES ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct netagent_wrapper* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netagent_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(uuid_t uuid)
{
	struct netagent_wrapper *wrapper = NULL;
	FUNC2(&netagent_lock);
	wrapper = FUNC3(uuid);
	FUNC1(&netagent_lock);

	if (wrapper != NULL) {
		FUNC4(uuid, KEV_NETAGENT_UPDATED_INTERFACES, TRUE);
	} else {
		FUNC0(LOG_DEBUG, "Interface event with no associated agent");
	}

	return;
}