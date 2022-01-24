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
typedef  int /*<<< orphan*/  u_int32_t ;
struct netagent_session {int dummy; } ;
typedef  int /*<<< orphan*/  kern_ctl_ref ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOPROTOOPT ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
#define  NETAGENT_OPTION_TYPE_ASSIGN_NEXUS 132 
#define  NETAGENT_OPTION_TYPE_REGISTER 131 
#define  NETAGENT_OPTION_TYPE_UNREGISTER 130 
#define  NETAGENT_OPTION_TYPE_UPDATE 129 
#define  NETAGENT_OPTION_TYPE_USE_COUNT 128 
 int /*<<< orphan*/  FUNC1 (struct netagent_session*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct netagent_session*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct netagent_session*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct netagent_session*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct netagent_session*,void*,size_t) ; 

__attribute__((used)) static errno_t
FUNC6(kern_ctl_ref kctlref, u_int32_t unit, void *unitinfo, int opt,
					void *data, size_t len)
{
#pragma unused(kctlref, unit)
	struct netagent_session *session = (struct netagent_session *)unitinfo;
	errno_t error;

	if (session == NULL) {
		FUNC0(LOG_ERR, "Received a NULL session");
		error = EINVAL;
		goto done;
	}

	switch (opt) {
		case NETAGENT_OPTION_TYPE_REGISTER: {
			FUNC0(LOG_DEBUG, "Request for registration");
			error = FUNC2(session, data, len);
		}
		break;
		case NETAGENT_OPTION_TYPE_UPDATE: {
			FUNC0(LOG_DEBUG, "Request for update");
			error = FUNC4(session, data, len);
		}
		break;
		case NETAGENT_OPTION_TYPE_UNREGISTER: {
			FUNC0(LOG_DEBUG, "Request for unregistration");
			error = FUNC3(session, data, len);
		}
		break;
		case NETAGENT_OPTION_TYPE_ASSIGN_NEXUS: {
			FUNC0(LOG_DEBUG, "Request for assigning nexus");
			error = FUNC1(session, data, len);
		}
		break;
		case NETAGENT_OPTION_TYPE_USE_COUNT: {
			FUNC0(LOG_DEBUG, "Request to set use count");
			error = FUNC5(session, data, len);
		}
		break;
		default:
			FUNC0(LOG_ERR, "Received unknown option");
			error = ENOPROTOOPT;
		break;
	}

done:
	return (error);
}