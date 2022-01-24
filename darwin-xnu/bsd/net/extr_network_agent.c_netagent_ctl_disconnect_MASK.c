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
 int /*<<< orphan*/  FUNC0 (struct netagent_session*) ; 

__attribute__((used)) static errno_t
FUNC1(kern_ctl_ref kctlref, u_int32_t unit, void *unitinfo)
{
#pragma unused(kctlref, unit)
	struct netagent_session *session = (struct netagent_session *)unitinfo;
	if (session != NULL) {
		FUNC0(session);
	}

	return (0);
}