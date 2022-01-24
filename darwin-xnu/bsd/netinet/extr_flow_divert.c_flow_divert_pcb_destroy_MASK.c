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
struct flow_divert_pcb {int /*<<< orphan*/ * app_data; int /*<<< orphan*/ * connect_packet; int /*<<< orphan*/ * connect_token; int /*<<< orphan*/ * remote_address; int /*<<< orphan*/ * local_address; int /*<<< orphan*/  bytes_received; int /*<<< orphan*/  bytes_sent; int /*<<< orphan*/  bytes_read_by_app; int /*<<< orphan*/  bytes_written_by_app; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct flow_divert_pcb*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct flow_divert_pcb*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  M_FLOW_DIVERT_PCB ; 
 int /*<<< orphan*/  M_SONAME ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct flow_divert_pcb *fd_cb)
{
	FUNC0(LOG_INFO, fd_cb, "Destroying, app tx %u, app rx %u, tunnel tx %u, tunnel rx %u",
			fd_cb->bytes_written_by_app, fd_cb->bytes_read_by_app, fd_cb->bytes_sent, fd_cb->bytes_received);

	if (fd_cb->local_address != NULL) {
		FUNC1(fd_cb->local_address, M_SONAME);
	}
	if (fd_cb->remote_address != NULL) {
		FUNC1(fd_cb->remote_address, M_SONAME);
	}
	if (fd_cb->connect_token != NULL) {
		FUNC3(fd_cb->connect_token);
	}
	if (fd_cb->connect_packet != NULL) {
		FUNC3(fd_cb->connect_packet);
	}
	if (fd_cb->app_data != NULL) {
		FUNC1(fd_cb->app_data, M_TEMP);
	}
	FUNC2(fd_cb, sizeof(*fd_cb), M_FLOW_DIVERT_PCB);
}