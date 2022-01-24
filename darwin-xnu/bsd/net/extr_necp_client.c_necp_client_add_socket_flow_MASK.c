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
struct necp_client_flow_registration {int /*<<< orphan*/  flow_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  cb; struct inpcb* socket_handle; } ;
struct necp_client_flow {TYPE_1__ u; int /*<<< orphan*/  socket; } ;
struct inpcb {int /*<<< orphan*/  necp_cb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct necp_client_flow*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  MCR_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  flow_chain ; 
 struct necp_client_flow* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct necp_client_flow*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  necp_flow_cache ; 
 int /*<<< orphan*/  necp_socket_flow_count ; 

__attribute__((used)) static void
FUNC5(struct necp_client_flow_registration *flow_registration,
							struct inpcb *inp)
{
	struct necp_client_flow *new_flow = FUNC3(necp_flow_cache, MCR_SLEEP);
	if (new_flow == NULL) {
		FUNC1(LOG_ERR, "Failed to allocate socket flow");
		return;
	}

	FUNC4(new_flow, 0, sizeof(*new_flow));

	new_flow->socket = TRUE;
	new_flow->u.socket_handle = inp;
	new_flow->u.cb = inp->necp_cb;

	FUNC2(&necp_socket_flow_count);

	FUNC0(&flow_registration->flow_list, new_flow, flow_chain);
}