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
typedef  int /*<<< orphan*/  vfs_context_t ;
struct necp_session {int dummy; } ;
struct fileglob {int /*<<< orphan*/ * fg_data; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct necp_session*) ; 
 int /*<<< orphan*/  FUNC1 (struct necp_session*) ; 
 int /*<<< orphan*/  FUNC2 (struct necp_session*) ; 

__attribute__((used)) static int
FUNC3(struct fileglob *fg, vfs_context_t ctx)
{
#pragma unused(ctx)
	struct necp_session *session = (struct necp_session *)fg->fg_data;
	fg->fg_data = NULL;

	if (session != NULL) {
		FUNC2(session);
		FUNC1(session);
		FUNC0(session);
		return (0);
	} else {
		return (ENOENT);
	}
}