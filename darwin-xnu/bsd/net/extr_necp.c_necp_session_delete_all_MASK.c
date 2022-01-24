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
struct necp_session_action_args {int dummy; } ;
struct necp_session {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct necp_session*) ; 

__attribute__((used)) static int
FUNC1(struct necp_session *session, struct necp_session_action_args *uap, int *retval)
{
#pragma unused(uap)
	FUNC0(session);
	*retval = 0;
	return (0);
}