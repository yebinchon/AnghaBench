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
struct TYPE_2__ {int /*<<< orphan*/  netagent_type; int /*<<< orphan*/  netagent_domain; } ;
struct netagent_wrapper {TYPE_1__ netagent; } ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NETAGENT_DOMAINSIZE ; 
 int /*<<< orphan*/  NETAGENT_TYPESIZE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct netagent_wrapper* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netagent_lock ; 

bool
FUNC6(uuid_t uuid, char *domain, char *type)
{
	bool found = FALSE;
	if (domain == NULL || type == NULL) {
		FUNC0(LOG_ERR, "Invalid arguments for netagent_get_agent_domain_and_type %p %p", domain, type);
		return (FALSE);
	}

	FUNC3(&netagent_lock);
	struct netagent_wrapper *wrapper = FUNC5(uuid);
	if (wrapper != NULL) {
		found = TRUE;
		FUNC4(domain, wrapper->netagent.netagent_domain, NETAGENT_DOMAINSIZE);
		FUNC4(type, wrapper->netagent.netagent_type, NETAGENT_TYPESIZE);
	} else {
		FUNC1(LOG_ERR, "Type requested for invalid netagent");
	}
	FUNC2(&netagent_lock);

	return (found);
}