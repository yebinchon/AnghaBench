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
struct netagent_session {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netagent_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NETAGENT ; 
 int /*<<< orphan*/  FUNC1 (struct netagent_session*) ; 

__attribute__((used)) static void
FUNC2(struct netagent_session *session)
{
	if (session != NULL) {
		FUNC1(session);
		FUNC0(session, M_NETAGENT);
	}
}