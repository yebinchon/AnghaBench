#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int command; int /*<<< orphan*/  (* data_free ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/ * data; } ;
struct TYPE_5__ {TYPE_1__ parse; } ;
typedef  TYPE_2__ network_mysqld_con ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(network_mysqld_con *con) {
	con->parse.command = -1;
	if (con->parse.data && con->parse.data_free) {
		con->parse.data_free(con->parse.data);

		con->parse.data = NULL;
		con->parse.data_free = NULL;
	}
}