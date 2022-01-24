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
struct necp_client {int /*<<< orphan*/  lock; int /*<<< orphan*/  route_lock; struct necp_client* extra_interface_options; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct necp_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NECP ; 
 int /*<<< orphan*/  FUNC1 (struct necp_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct necp_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  necp_fd_mtx_grp ; 

__attribute__((used)) static void
FUNC4(struct necp_client *client)
{
	FUNC1(client);

	FUNC2(client);

	FUNC0(client->extra_interface_options, M_NECP);
	client->extra_interface_options = NULL;

	FUNC3(&client->route_lock, necp_fd_mtx_grp);
	FUNC3(&client->lock, necp_fd_mtx_grp);

	FUNC0(client, M_NECP);
}