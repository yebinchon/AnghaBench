#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ read_binlogs; struct TYPE_7__* mysqld_password; struct TYPE_7__* mysqld_username; struct TYPE_7__* master_address; TYPE_4__* listen_con; } ;
typedef  TYPE_2__ chassis_plugin_config ;
struct TYPE_8__ {TYPE_1__* server; } ;
struct TYPE_6__ {int /*<<< orphan*/  event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 

void FUNC4(chassis_plugin_config *config) {
	if (config->listen_con) {
		/**
		 * the connection will be free()ed by the network_mysqld_free()
		 */
#if 0
		event_del(&(config->listen_con->server->event));
		network_mysqld_con_free(config->listen_con);
#endif
	}

	if (config->master_address) {
		/* free the global scope */
		FUNC1(config->master_address);
	}

	if (config->mysqld_username) FUNC1(config->mysqld_username);
	if (config->mysqld_password) FUNC1(config->mysqld_password);
	if (config->read_binlogs) FUNC2(config->read_binlogs);

	FUNC1(config);
}